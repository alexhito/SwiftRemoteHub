//
//  ApolloNetwork.swift
//  SwiftRemoteHub
//
//  Created by Alexander on 18/1/26.
//

import Foundation
import Apollo

// MARK: - Network Singleton
final class Network {
    static let shared = Network()

    let apollo: ApolloClient

    private init() {
        apollo = ApolloClient(
            url: URL(string: "https://rickandmortyapi.com/graphql")!
        )
    }
}


