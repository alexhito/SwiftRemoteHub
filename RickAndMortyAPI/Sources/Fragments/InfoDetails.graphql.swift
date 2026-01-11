// @generated
// This file was automatically generated and should not be edited.

@_exported import ApolloAPI
@_spi(Execution) @_spi(Unsafe) import ApolloAPI

public struct InfoDetails: MySchemaName.SelectionSet, Fragment {
  public static var fragmentDefinition: StaticString {
    #"fragment InfoDetails on Info { __typename count pages next prev }"#
  }

  @_spi(Unsafe) public let __data: DataDict
  @_spi(Unsafe) public init(_dataDict: DataDict) { __data = _dataDict }

  @_spi(Execution) public static var __parentType: any ApolloAPI.ParentType { MySchemaName.Objects.Info }
  @_spi(Execution) public static var __selections: [ApolloAPI.Selection] { [
    .field("__typename", String.self),
    .field("count", Int?.self),
    .field("pages", Int?.self),
    .field("next", Int?.self),
    .field("prev", Int?.self),
  ] }
  @_spi(Execution) public static var __fulfilledFragments: [any ApolloAPI.SelectionSet.Type] { [
    InfoDetails.self
  ] }

  /// The length of the response.
  public var count: Int? { __data["count"] }
  /// The amount of pages.
  public var pages: Int? { __data["pages"] }
  /// Number of the next page (if it exists)
  public var next: Int? { __data["next"] }
  /// Number of the previous page (if it exists)
  public var prev: Int? { __data["prev"] }
}
