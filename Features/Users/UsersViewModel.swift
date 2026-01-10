//
//  UsersViewModel.swift
//  SwiftRemoteHub
//
//  Created by Alexander on 10/1/26.
//

import Foundation
import Combine

@MainActor
final class UsersViewModel: ObservableObject {

    @Published var users: [User] = []

    init() {
        loadMockUsers()
    }

    private func loadMockUsers() {
        users = [
            User(id: 1, name: "John Doe", email: "john@mail.com"),
            User(id: 2, name: "Jane Smith", email: "jane@mail.com")
        ]
    }
}
