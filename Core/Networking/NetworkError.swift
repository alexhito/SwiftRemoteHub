//
//  NetworkError.swift
//  SwiftRemoteHub
//
//  Created by Alexander on 10/1/26.
//

import Foundation

enum NetworkError: Error, LocalizedError {
  case invalidUrl
  case invalidResponse
  case decoding(Error)
  
  var errorDescescription: String? {
    switch self {
    case .invalidUrl:
      return "Invalid URL"
    case .invalidResponse:
      return "Invalid response"
    case .decoding(let error):
      return "Decoding error: \(error)"
    }
  }
}
