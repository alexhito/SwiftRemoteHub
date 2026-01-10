//
//  UsersRepositoryMock.swift
//  SwiftRemoteHub
//
//  Created by Alexander on 10/1/26.
//

import Foundation

struct UsersRepositoryMock: UsersRepositoryProtocol {
  let result: Result<[User], Error>
  
  func fetchUsers() async throws -> [User] {
    switch result {
    case .success(let users):
      return users
    case .failure(let error):
      throw error
    }
  }
  
}
