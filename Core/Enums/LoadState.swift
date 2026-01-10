//
//  LoadState.swift
//  SwiftRemoteHubTests
//
//  Created by Alexander on 10/1/26.
//

import Foundation

enum LoadState<T> {
  case idle
  case loading
  case success(T)
  case failure(String)
}
