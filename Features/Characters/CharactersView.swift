//
//  CharactersView.swift
//  SwiftRemoteHub
//
//  Created by Alexander on 18/1/26.
//

import SwiftUI

struct CharactersView: View {
  @StateObject private var charactersViewModel: CharactersViewModel
  
  init(charactersViewModel: CharactersViewModel) {
    _charactersViewModel = StateObject(wrappedValue: charactersViewModel)
  }
  
  var body: some View {
    NavigationStack {
      List {
        ForEach(charactersViewModel.characters) { character in
          HStack(alignment: .center) {
            Button(action: {
              print(character.name ?? "No Name")
            }) {
              VStack(alignment: .leading) {
                Text(character.name ?? "No name")
                  .font(.headline)
                Text(character.origin?.name ?? "No Origin")
                  .font(.subheadline)
                  .foregroundColor(.secondary)
              }
              
            }
            
            Spacer()
            
            AsyncImage(url: URL(string: character.image ?? "")) { image in
              image
                .resizable()
                .scaledToFill()
            } placeholder: {
              ProgressView()
            }
            .frame(width: 55, height: 55)
            .clipShape(Circle())
          }
          .onAppear {
            Task {
              await charactersViewModel.fetchNextPageIfNeeded(currentItem: character)
            }
          }
        }
        
        if charactersViewModel.isLoading {
          ProgressView()
            .frame(maxWidth: .infinity)
        }
      }
      .navigationTitle("Characters")
      // FORZAR QUE LA BARRA SEA VISIBLE (Esto evita que invada la batería)
      .toolbarBackground(.visible, for: .navigationBar)
      .refreshable {
        await charactersViewModel.fetchCharacters(refresh: true)
      }
      .task {
        await charactersViewModel.fetchCharacters()
      }
    }
  }
}


#Preview {
  let viewModel = CharactersViewModel(repository: CharactersRepository())
  CharactersView(charactersViewModel: viewModel)
}
