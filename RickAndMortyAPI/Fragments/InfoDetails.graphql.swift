// @generated
// This file was automatically generated and should not be edited.

@_exported import ApolloAPI
@_spi(Execution) @_spi(Unsafe) import ApolloAPI

extension MySchemaName {
  struct InfoDetails: MySchemaName.SelectionSet, Fragment {
    static var fragmentDefinition: StaticString {
      #"fragment InfoDetails on Info { __typename count pages next prev }"#
    }

    let __data: DataDict
    init(_dataDict: DataDict) { __data = _dataDict }

    static var __parentType: any ApolloAPI.ParentType { MySchemaName.Objects.Info }
    static var __selections: [ApolloAPI.Selection] { [
      .field("__typename", String.self),
      .field("count", Int?.self),
      .field("pages", Int?.self),
      .field("next", Int?.self),
      .field("prev", Int?.self),
    ] }
    static var __fulfilledFragments: [any ApolloAPI.SelectionSet.Type] { [
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
  }

}