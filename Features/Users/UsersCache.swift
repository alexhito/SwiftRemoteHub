//
//  UsersCache.swift
//  SwiftRemoteHubTests
//
//  Created by Alexander on 10/1/26.
//

import Foundation

actor UsersCache {
  private var users: [User]?

  func get() -> [User]? {
    users
  }

  func set(_ users: [User]) {
    self.users = users
  }
}
