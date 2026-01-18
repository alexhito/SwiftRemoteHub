//
//  SwiftRemoreHubApp.swift
//  SwiftRemoteHub
//
//  Created by Alexander on 10/1/26.
//

import SwiftUI

@main
struct SwiftRemoteHubApp: App {
  var body: some Scene {
    WindowGroup {
      CharactersView(charactersViewModel: CharactersViewModel(repository: CharactersRepository()))
//      UsersView(usersViewModel: UsersViewModel(repository: UsersRepository()))
    }
  }
}


#Preview {
//  UsersView(usersViewModel: UsersViewModel(repository: UsersRepository()))
}
