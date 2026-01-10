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
        usersViewModel.loadUsers()
      })
      .onDisappear {
        usersViewModel.cancel()
      }
    }
  }
  
  @ViewBuilder
  private var content: some View {
    switch usersViewModel.state {
    case .idle:
      EmptyView()
    case .loading:
      ProgressView("Loading...")
    case .success(let users):
      List(users) { user in
        VStack(alignment: .leading) {
          Text(user.name)
            .font(.headline)
          Text(user.email)
            .font(.subheadline)
            .foregroundStyle(.secondary)
        }
      }
    case .failure(let errorMessage):
      VStack {
        Text(errorMessage)
          .foregroundStyle(.red)
        Button("Retry") {
          usersViewModel.retry()
        }
      }
    }
  }
}

#Preview("NetworkData") {
  let repo = UsersRepository()
  let viewModel = UsersViewModel(repository: repo)
  viewModel.loadUsers()
  return UsersView(usersViewModel: viewModel)
}

#Preview("Sucess") {
  let mockRepo = UsersRepositoryMock(result: .success(UsersMockData.users))
  
  let viewmodel = UsersViewModel(repository: mockRepo)
  viewmodel.state = .success(UsersMockData.users)
  
  return UsersView(usersViewModel: viewmodel)
}

#Preview("Empty") {
  let mockRepo = UsersRepositoryMock(result: .success([]))
  let viewmodel = UsersViewModel(repository: mockRepo)
  viewmodel.state = .success([])

  return UsersView(usersViewModel: viewmodel)
}

#Preview("Error") {
  let mockRepo = UsersRepositoryMock(result: .failure(NetworkError.invalidResponse))
  let viewmodel = UsersViewModel(repository: mockRepo)
  viewmodel.state = .failure("Error")
  return UsersView(usersViewModel: viewmodel)
}
