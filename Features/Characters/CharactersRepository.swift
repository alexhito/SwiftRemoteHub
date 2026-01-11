//
//  CharactersRepository.swift
//  SwiftRemoteHub
//
//  Created by Alexander on 11/1/26.
//
//import RickAndMortyApi
import Apollo

protocol CharactersRepositoryProtocol {
//  func fetchCharacters(page: Int) async throws -> [User]
}

final class CharactersRepository: CharactersRepositoryProtocol {
  let query = MySchemaName.GetCharactersQuery(page: 1)
  
//  private let client: NetworkClientProtocol
//  private let cachedUsers = UsersCache()
//  
//  init(client: NetworkClientProtocol = NetworkClient()) {
//    self.client = client
//  }
//  
//  func fetchUsers() async throws -> [User] {
//    guard let url = URL(string: "https://jsonplaceholder.typicode.com/users") else {
//      throw NetworkError.invalidUrl
//    }
//    
//    if let cached = await cachedUsers.get() {
//      return cached
//    }
//    
//    let users: [User] = try await client.fetch(fromUrl: url)
//    await cachedUsers.set(users)
//    return users
//  }
}
