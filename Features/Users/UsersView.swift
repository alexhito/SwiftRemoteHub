//
//  UsersView.swift
//  SwiftRemoteHub
//
//  Created by Alexander on 10/1/26.
//

import SwiftUI

struct UsersView: View {
  @StateObject private var usersViewModel: UsersViewModel
  
  init(usersViewModel: UsersViewModel) {
    _usersViewModel = StateObject(wrappedValue: usersViewModel)
  }
  
  var body: some View {
    NavigationStack {
      content
      .navigationTitle("Users")
      .task( {
        await usersViewModel.loadUsers()
      })
    }
  }
  
  @ViewBuilder
  private var content: some View {
    if usersViewModel.isLoading {
      ProgressView("Loading...")
    } else if let errorMessage = usersViewModel.errorMesasge {
      Text(errorMessage)
        .foregroundStyle(.red)
    } else {
      List(usersViewModel.users) { user in
        VStack(alignment: .leading) {
          Text(user.name)
            .font(.headline)
          Text(user.email)
            .font(.subheadline)
            .foregroundStyle(.secondary)
        }
      }
    }
  }
}

#Preview("Sucess") {
  let mockRepo = UsersRepositoryMock(result: .success(UsersMockData.users))
  
  let viewmodel = UsersViewModel(repository: mockRepo)
  
  return UsersView(usersViewModel: viewmodel)
}

#Preview("Empty") {
  let mockRepo = UsersRepositoryMock(result: .success([]))
  
  return UsersView(usersViewModel: UsersViewModel(repository: mockRepo))
}

#Preview("Error") {
  let mockRepo = UsersRepositoryMock(result: .failure(NetworkError.invalidResponse))
  
  return UsersView(usersViewModel: UsersViewModel(repository: mockRepo))
}
