//
//  UsersViewModel.swift
//  SwiftRemoteHub
//
//  Created by Alexander on 10/1/26.
//

import Foundation
import Combine

@MainActor
final class UsersViewModel: ObservableObject {

  @Published var state: LoadState<[User]> = .idle
  
  private let repository: UsersRepositoryProtocol
  private var loadTask: Task<Void, Never>?
  
  @MainActor
  init(repository: UsersRepositoryProtocol) {
    self.repository = repository
  }
  
  func loadUsers() {
    // this cancel the previous task if exist...
    loadTask?.cancel()
    
    loadTask = Task {
      state = .loading
      
      do {
        let users = try await repository.fetchUsers()
        state = .success(users)
      } catch is CancellationError {
        // ignore if was canceled...
      } catch {
        state = .failure("Failed to fetch users: \(error)")
      }
    }
  }
  
  func retry() {
    loadUsers()
  }
  
  func cancel() {
    loadTask?.cancel()
    loadTask = nil
  }
}
