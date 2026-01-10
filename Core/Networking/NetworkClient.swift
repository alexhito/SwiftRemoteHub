//
//  NetworkClient.swift
//  SwiftRemoteHub
//
//  Created by Alexander on 10/1/26.
//

import Foundation

protocol NetworkClientProtocol {
  func fetch<T: Decodable>(fromUrl: URL) async throws -> T
}


final class NetworkClient: NetworkClientProtocol {
  func fetch<T: Decodable>(fromUrl: URL) async throws -> T {
    let (data, response) = try await URLSession.shared.data(from: fromUrl)
    
    guard let httpResponse = response as? HTTPURLResponse,
          200..<300 ~= httpResponse.statusCode else {
      throw NetworkError.invalidResponse
    }
    
    do {
      return try JSONDecoder().decode(T.self, from: data)
    } catch {
      throw NetworkError.decoding(error)
    }
  }
}
