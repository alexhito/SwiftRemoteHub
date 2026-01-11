// @generated
// This file was automatically generated and should not be edited.

@_exported import ApolloAPI
@_spi(Execution) @_spi(Unsafe) import ApolloAPI

extension MySchemaName {
  struct CharacterDetails: MySchemaName.SelectionSet, Fragment {
    static var fragmentDefinition: StaticString {
      #"fragment CharacterDetails on Character { __typename id name status species type gender image origin { __typename name id } location { __typename name id } episode { __typename id } created }"#
    }

    let __data: DataDict
    init(_dataDict: DataDict) { __data = _dataDict }

    static var __parentType: any ApolloAPI.ParentType { MySchemaName.Objects.Character }
    static var __selections: [ApolloAPI.Selection] { [
      .field("__typename", String.self),
      .field("id", MySchemaName.ID?.self),
      .field("name", String?.self),
      .field("status", String?.self),
      .field("species", String?.self),
      .field("type", String?.self),
      .field("gender", String?.self),
      .field("image", String?.self),
      .field("origin", Origin?.self),
      .field("location", Location?.self),
      .field("episode", [Episode?].self),
      .field("created", String?.self),
    ] }
    static var __fulfilledFragments: [any ApolloAPI.SelectionSet.Type] { [
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

    /// Origin
    ///
    /// Parent Type: `Location`
    struct Origin: MySchemaName.SelectionSet {
      let __data: DataDict
      init(_dataDict: DataDict) { __data = _dataDict }

      static var __parentType: any ApolloAPI.ParentType { MySchemaName.Objects.Location }
      static var __selections: [ApolloAPI.Selection] { [
        .field("__typename", String.self),
        .field("name", String?.self),
        .field("id", MySchemaName.ID?.self),
      ] }
      static var __fulfilledFragments: [any ApolloAPI.SelectionSet.Type] { [
        CharacterDetails.Origin.self
      ] }

      /// The name of the location.
      var name: String? { __data["name"] }
      /// The id of the location.
      var id: MySchemaName.ID? { __data["id"] }
    }

    /// Location
    ///
    /// Parent Type: `Location`
    struct Location: MySchemaName.SelectionSet {
      let __data: DataDict
      init(_dataDict: DataDict) { __data = _dataDict }

      static var __parentType: any ApolloAPI.ParentType { MySchemaName.Objects.Location }
      static var __selections: [ApolloAPI.Selection] { [
        .field("__typename", String.self),
        .field("name", String?.self),
        .field("id", MySchemaName.ID?.self),
      ] }
      static var __fulfilledFragments: [any ApolloAPI.SelectionSet.Type] { [
        CharacterDetails.Location.self
      ] }

      /// The name of the location.
      var name: String? { __data["name"] }
      /// The id of the location.
      var id: MySchemaName.ID? { __data["id"] }
    }

    /// Episode
    ///
    /// Parent Type: `Episode`
    struct Episode: MySchemaName.SelectionSet {
      let __data: DataDict
      init(_dataDict: DataDict) { __data = _dataDict }

      static var __parentType: any ApolloAPI.ParentType { MySchemaName.Objects.Episode }
      static var __selections: [ApolloAPI.Selection] { [
        .field("__typename", String.self),
        .field("id", MySchemaName.ID?.self),
      ] }
      static var __fulfilledFragments: [any ApolloAPI.SelectionSet.Type] { [
        CharacterDetails.Episode.self
      ] }

      /// The id of the episode.
      var id: MySchemaName.ID? { __data["id"] }
    }
  }

}