//
//  CharactersRepository.swift
//  SwiftRemoteHub
//
//  Created by Alexander on 11/1/26.
//
//import RickAndMortyApi
import Apollo

protocol CharactersRepositoryProtocol {
  func fetchCharacters(page: Int) async throws -> [Character]
}

final class CharactersRepository: CharactersRepositoryProtocol {
  
  func fetchCharacters(page: Int) async throws -> [Character] {
    do {
      let query = MySchemaName.GetCharactersQuery(page: .init(integerLiteral: .IntegerLiteralType(page)))
      let response = try await Network.shared.apollo.fetch(query: query)
      let characters = response.data?.characters?.results?.compactMap { $0 }.compactMap { Character.init(from: $0)} ?? []
      return characters
    } catch {
      print("Error fetching hero: \(error)")
      throw NetworkError.invalidResponse
    }
  }
}
