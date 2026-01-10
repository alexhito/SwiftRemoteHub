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
  
  @Published var users: [User] = []
  @Published var isLoading = false
  @Published var errorMesasge: String?
  
  private let repository: UsersRepositoryProtocol
  
  @MainActor
  init(repository: UsersRepositoryProtocol) {
    self.repository = repository
  }
  
  func loadUsers() async {
    isLoading = true
    errorMesasge = nil
    
    do {
      users = try await repository.fetchUsers()
    } catch {
      errorMesasge = "Failed to fetch users: \(error)"
    }
    
    isLoading = false
  }
}
