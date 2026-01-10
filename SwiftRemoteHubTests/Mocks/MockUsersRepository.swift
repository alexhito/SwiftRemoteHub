//
//  MockUsersRepository.swift
//  SwiftRemoteHubTests
//
//  Created by Alexander on 10/1/26.
//

@testable import SwiftRemoteHub
import Foundation

final class MockUsersRepository: UsersRepositoryProtocol {
  
  var result: Result<[User], Error> = .success([])
  
  func fetchUsers() async throws -> [User] {
    switch result {
    case .success(let users):
      return users
    case .failure(let error):
      throw error
    }
  }
}

