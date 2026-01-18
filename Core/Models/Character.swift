//
//  Character.swift
//  SwiftRemoteHub
//
//  Created by Alexander on 18/1/26.
//

import Foundation

struct Character: Identifiable, Equatable {
  //  let typeName: String
  let id: String
  let name: String?
  let status: String?
  let species: String?
  let type: String?
  let gender: String?
  let image: String?
  let origin: Origin?
  let location: Location?
  let episode: [Episode]?
  let created: String?
}

struct Origin: Identifiable, Equatable {
  //  let typeName: String
  let id: String?
  let name: String?
  
}

struct Location: Identifiable, Equatable {
  let id: String?
  let name: String?
  
}

struct Episode: Identifiable, Equatable {
  let id: String?
}

//extension Origin {
//  init?(from gql: MySchemaName.GetCharactersQuery.Data.Characters.Result) {
//    guard let id = gql.origin?.id,
//            let name = gql.origin?.name else {
//          return nil
//      }
//    self.id = gql.origin?.id
//    self.name = gql.
//}


extension Character {
  init?(from gql: MySchemaName.GetCharactersQuery.Data.Characters.Result) {
    guard let id = gql.id,
          let name = gql.name else {
      return nil
    }
    
    self.id = id
    self.name = name
    self.status = gql.status
    self.species = gql.species
    self.type = gql.type
    self.gender = gql.gender
    self.image = gql.image
    self.origin = Origin(id: gql.origin?.id, name: gql.origin?.name)
    self.location = Location(id: gql.location?.id, name: gql.location?.name)
    self.episode = gql.episode.compactMap{ $0 }.map { Episode(id: $0.id) }
    self.created = gql.created
  }
}
