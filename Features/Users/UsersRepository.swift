//
//  UsersRepository.swift
//  SwiftRemoteHub
//
//  Created by Alexander on 10/1/26.
//

import Foundation

protocol UsersRepositoryProtocol {
  func fetchUsers() async throws -> [User]
}

final class UsersRepository: UsersRepositoryProtocol {
  
  private let client: NetworkClientProtocol
  
  init(client: NetworkClientProtocol = NetworkClient()) {
    self.client = client
  }
  
  func fetchUsers() async throws -> [User] {
    guard let url = URL(string: "https://jsonplaceholder.typicode.com/users") else {
      throw NetworkError.invalidUrl
    }
    return try await client.fetch(fromUrl: url)
  }
}
