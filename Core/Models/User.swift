//
//  User.swift
//  SwiftRemoteHub
//
//  Created by Alexander on 10/1/26.
//

import Foundation


struct User: Identifiable, Codable {
    let id: Int
    let name: String
    let email: String
}
