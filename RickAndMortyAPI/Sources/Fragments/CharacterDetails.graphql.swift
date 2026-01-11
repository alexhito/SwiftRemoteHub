// @generated
// This file was automatically generated and should not be edited.

@_exported import ApolloAPI
@_spi(Execution) @_spi(Unsafe) import ApolloAPI

public struct CharacterDetails: MySchemaName.SelectionSet, Fragment {
  public static var fragmentDefinition: StaticString {
    #"fragment CharacterDetails on Character { __typename id name status species type gender image origin { __typename name id } location { __typename name id } episode { __typename id } created }"#
  }

  @_spi(Unsafe) public let __data: DataDict
  @_spi(Unsafe) public init(_dataDict: DataDict) { __data = _dataDict }

  @_spi(Execution) public static var __parentType: any ApolloAPI.ParentType { MySchemaName.Objects.Character }
  @_spi(Execution) public static var __selections: [ApolloAPI.Selection] { [
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
  @_spi(Execution) public static var __fulfilledFragments: [any ApolloAPI.SelectionSet.Type] { [
    CharacterDetails.self
  ] }

  /// The id of the character.
  public var id: MySchemaName.ID? { __data["id"] }
  /// The name of the character.
  public var name: String? { __data["name"] }
  /// The status of the character ('Alive', 'Dead' or 'unknown').
  public var status: String? { __data["status"] }
  /// The species of the character.
  public var species: String? { __data["species"] }
  /// The type or subspecies of the character.
  public var type: String? { __data["type"] }
  /// The gender of the character ('Female', 'Male', 'Genderless' or 'unknown').
  public var gender: String? { __data["gender"] }
  /// Link to the character's image.
  /// All images are 300x300px and most are medium shots or portraits since they are intended to be used as avatars.
  public var image: String? { __data["image"] }
  /// The character's origin location
  public var origin: Origin? { __data["origin"] }
  /// The character's last known location
  public var location: Location? { __data["location"] }
  /// Episodes in which this character appeared.
  public var episode: [Episode?] { __data["episode"] }
  /// Time at which the character was created in the database.
  public var created: String? { __data["created"] }

  /// Origin
  ///
  /// Parent Type: `Location`
  public struct Origin: MySchemaName.SelectionSet {
    @_spi(Unsafe) public let __data: DataDict
    @_spi(Unsafe) public init(_dataDict: DataDict) { __data = _dataDict }

    @_spi(Execution) public static var __parentType: any ApolloAPI.ParentType { MySchemaName.Objects.Location }
    @_spi(Execution) public static var __selections: [ApolloAPI.Selection] { [
      .field("__typename", String.self),
      .field("name", String?.self),
      .field("id", MySchemaName.ID?.self),
    ] }
    @_spi(Execution) public static var __fulfilledFragments: [any ApolloAPI.SelectionSet.Type] { [
      CharacterDetails.Origin.self
    ] }

    /// The name of the location.
    public var name: String? { __data["name"] }
    /// The id of the location.
    public var id: MySchemaName.ID? { __data["id"] }
  }

  /// Location
  ///
  /// Parent Type: `Location`
  public struct Location: MySchemaName.SelectionSet {
    @_spi(Unsafe) public let __data: DataDict
    @_spi(Unsafe) public init(_dataDict: DataDict) { __data = _dataDict }

    @_spi(Execution) public static var __parentType: any ApolloAPI.ParentType { MySchemaName.Objects.Location }
    @_spi(Execution) public static var __selections: [ApolloAPI.Selection] { [
      .field("__typename", String.self),
      .field("name", String?.self),
      .field("id", MySchemaName.ID?.self),
    ] }
    @_spi(Execution) public static var __fulfilledFragments: [any ApolloAPI.SelectionSet.Type] { [
      CharacterDetails.Location.self
    ] }

    /// The name of the location.
    public var name: String? { __data["name"] }
    /// The id of the location.
    public var id: MySchemaName.ID? { __data["id"] }
  }

  /// Episode
  ///
  /// Parent Type: `Episode`
  public struct Episode: MySchemaName.SelectionSet {
    @_spi(Unsafe) public let __data: DataDict
    @_spi(Unsafe) public init(_dataDict: DataDict) { __data = _dataDict }

    @_spi(Execution) public static var __parentType: any ApolloAPI.ParentType { MySchemaName.Objects.Episode }
    @_spi(Execution) public static var __selections: [ApolloAPI.Selection] { [
      .field("__typename", String.self),
      .field("id", MySchemaName.ID?.self),
    ] }
    @_spi(Execution) public static var __fulfilledFragments: [any ApolloAPI.SelectionSet.Type] { [
      CharacterDetails.Episode.self
    ] }

    /// The id of the episode.
    public var id: MySchemaName.ID? { __data["id"] }
  }
}
