// @generated
// This file was automatically generated and should not be edited.

@_exported import ApolloAPI
@_spi(Execution) @_spi(Unsafe) import ApolloAPI

extension MySchemaName {
  struct GetCharacterQuery: GraphQLQuery {
    static let operationName: String = "GetCharacter"
    static let operationDocument: ApolloAPI.OperationDocument = .init(
      definition: .init(
        #"query GetCharacter($id: ID!) { character(id: $id) { __typename ...CharacterDetails } }"#,
        fragments: [CharacterDetails.self]
      ))

    public var id: ID

    public init(id: ID) {
      self.id = id
    }

    @_spi(Unsafe) public var __variables: Variables? { ["id": id] }

    struct Data: MySchemaName.SelectionSet {
      let __data: DataDict
      init(_dataDict: DataDict) { __data = _dataDict }

      static var __parentType: any ApolloAPI.ParentType { MySchemaName.Objects.Query }
      static var __selections: [ApolloAPI.Selection] { [
        .field("character", Character?.self, arguments: ["id": .variable("id")]),
      ] }
      static var __fulfilledFragments: [any ApolloAPI.SelectionSet.Type] { [
        GetCharacterQuery.Data.self
      ] }

      /// Get a specific character by ID
      var character: Character? { __data["character"] }

      /// Character
      ///
      /// Parent Type: `Character`
      struct Character: MySchemaName.SelectionSet {
        let __data: DataDict
        init(_dataDict: DataDict) { __data = _dataDict }

        static var __parentType: any ApolloAPI.ParentType { MySchemaName.Objects.Character }
        static var __selections: [ApolloAPI.Selection] { [
          .field("__typename", String.self),
          .fragment(CharacterDetails.self),
        ] }
        static var __fulfilledFragments: [any ApolloAPI.SelectionSet.Type] { [
          GetCharacterQuery.Data.Character.self,
          CharacterDetails.self
        ] }

        /// The id of the character.
        var id: MySchemaName.ID? { __data["id"] }
        /// The name of the character.
        var name: String? { __data["name"] }
        /// The status of the character ('Alive', 'Dead' or 'unknown').
        var status: String? { __data["status"] }
        /// The species of the character.
        var species: String? { __data["species"] }
        /// The type or subspecies of the character.
        var type: String? { __data["type"] }
        /// The gender of the character ('Female', 'Male', 'Genderless' or 'unknown').
        var gender: String? { __data["gender"] }
        /// Link to the character's image.
        /// All images are 300x300px and most are medium shots or portraits since they are intended to be used as avatars.
        var image: String? { __data["image"] }
        /// The character's origin location
        var origin: Origin? { __data["origin"] }
        /// The character's last known location
        var location: Location? { __data["location"] }
        /// Episodes in which this character appeared.
        var episode: [Episode?] { __data["episode"] }
        /// Time at which the character was created in the database.
        var created: String? { __data["created"] }

        struct Fragments: FragmentContainer {
          let __data: DataDict
          init(_dataDict: DataDict) { __data = _dataDict }

          var characterDetails: CharacterDetails { _toFragment() }
        }

        typealias Origin = CharacterDetails.Origin

        typealias Location = CharacterDetails.Location

        typealias Episode = CharacterDetails.Episode
      }
    }
  }

}