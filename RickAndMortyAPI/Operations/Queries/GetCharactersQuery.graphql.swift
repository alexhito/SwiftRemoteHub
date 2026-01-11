// @generated
// This file was automatically generated and should not be edited.

@_exported import ApolloAPI
@_spi(Execution) @_spi(Unsafe) import ApolloAPI

extension MySchemaName {
  struct GetCharactersQuery: GraphQLQuery {
    static let operationName: String = "GetCharacters"
    static let operationDocument: ApolloAPI.OperationDocument = .init(
      definition: .init(
        #"query GetCharacters($page: Int) { characters(page: $page) { __typename info { __typename ...InfoDetails } results { __typename ...CharacterDetails } } }"#,
        fragments: [CharacterDetails.self, InfoDetails.self]
      ))

    public var page: GraphQLNullable<Int32>

    public init(page: GraphQLNullable<Int32>) {
      self.page = page
    }

    @_spi(Unsafe) public var __variables: Variables? { ["page": page] }

    struct Data: MySchemaName.SelectionSet {
      let __data: DataDict
      init(_dataDict: DataDict) { __data = _dataDict }

      static var __parentType: any ApolloAPI.ParentType { MySchemaName.Objects.Query }
      static var __selections: [ApolloAPI.Selection] { [
        .field("characters", Characters?.self, arguments: ["page": .variable("page")]),
      ] }
      static var __fulfilledFragments: [any ApolloAPI.SelectionSet.Type] { [
        GetCharactersQuery.Data.self
      ] }

      /// Get the list of all characters
      var characters: Characters? { __data["characters"] }

      /// Characters
      ///
      /// Parent Type: `Characters`
      struct Characters: MySchemaName.SelectionSet {
        let __data: DataDict
        init(_dataDict: DataDict) { __data = _dataDict }

        static var __parentType: any ApolloAPI.ParentType { MySchemaName.Objects.Characters }
        static var __selections: [ApolloAPI.Selection] { [
          .field("__typename", String.self),
          .field("info", Info?.self),
          .field("results", [Result?]?.self),
        ] }
        static var __fulfilledFragments: [any ApolloAPI.SelectionSet.Type] { [
          GetCharactersQuery.Data.Characters.self
        ] }

        var info: Info? { __data["info"] }
        var results: [Result?]? { __data["results"] }

        /// Characters.Info
        ///
        /// Parent Type: `Info`
        struct Info: MySchemaName.SelectionSet {
          let __data: DataDict
          init(_dataDict: DataDict) { __data = _dataDict }

          static var __parentType: any ApolloAPI.ParentType { MySchemaName.Objects.Info }
          static var __selections: [ApolloAPI.Selection] { [
            .field("__typename", String.self),
            .fragment(InfoDetails.self),
          ] }
          static var __fulfilledFragments: [any ApolloAPI.SelectionSet.Type] { [
            GetCharactersQuery.Data.Characters.Info.self,
            InfoDetails.self
          ] }

          /// The length of the response.
          var count: Int? { __data["count"] }
          /// The amount of pages.
          var pages: Int? { __data["pages"] }
          /// Number of the next page (if it exists)
          var next: Int? { __data["next"] }
          /// Number of the previous page (if it exists)
          var prev: Int? { __data["prev"] }

          struct Fragments: FragmentContainer {
            let __data: DataDict
            init(_dataDict: DataDict) { __data = _dataDict }

            var infoDetails: InfoDetails { _toFragment() }
          }
        }

        /// Characters.Result
        ///
        /// Parent Type: `Character`
        struct Result: MySchemaName.SelectionSet {
          let __data: DataDict
          init(_dataDict: DataDict) { __data = _dataDict }

          static var __parentType: any ApolloAPI.ParentType { MySchemaName.Objects.Character }
          static var __selections: [ApolloAPI.Selection] { [
            .field("__typename", String.self),
            .fragment(CharacterDetails.self),
          ] }
          static var __fulfilledFragments: [any ApolloAPI.SelectionSet.Type] { [
            GetCharactersQuery.Data.Characters.Result.self,
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

}