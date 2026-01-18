//
//  CharactersViewModel.swift
//  SwiftRemoteHub
//
//  Created by Alexander on 18/1/26.
//

import Foundation
import Combine

@MainActor
final class CharactersViewModel: ObservableObject {
  
  private let repository: CharactersRepositoryProtocol
  
  @Published var characters: [Character] = []
  @Published var isLoading = false

  private var currentPage = 1
  private var hasNextPage = true

  init(repository: CharactersRepositoryProtocol) {
    self.repository = repository
  }
  
  func fetchNextPageIfNeeded(currentItem: Character?) async {
    guard
      let currentItem,
      let lastItem = characters.last,
      currentItem.id == lastItem.id,
      hasNextPage,
      !isLoading
    else { return }

    await fetchCharacters()
  }
  
  func fetchCharacters(refresh: Bool = false) async {
    if (refresh) {
      characters = []
      currentPage = 1
      hasNextPage = true
    }
     guard !isLoading, hasNextPage else { return }

     isLoading = true

     do {
       let newCharacters = try await repository.fetchCharacters(page: currentPage)

       if newCharacters.isEmpty {
         hasNextPage = false
       } else {
         characters.append(contentsOf: newCharacters)
         currentPage += 1
       }
     } catch {
       print("Pagination error:", error)
     }

     isLoading = false
   }
}
