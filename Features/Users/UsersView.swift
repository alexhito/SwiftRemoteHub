//
//  UsersView.swift
//  SwiftRemoteHub
//
//  Created by Alexander on 10/1/26.
//

import SwiftUI

struct UsersView: View {
  @StateObject private var usersViewModel = UsersViewModel()
  
    var body: some View {
      NavigationStack {
        List(usersViewModel.users) { user in
          VStack(alignment: .leading) {
            Text(user.name)
              .font(.headline)
            Text(user.email)
              .font(.subheadline)
              .foregroundStyle(.secondary)
          }
        }
        .navigationTitle("Users")
      }
    }
}

#Preview {
    UsersView()
    .environmentObject(UsersViewModel())
}
