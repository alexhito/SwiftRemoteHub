// @generated
// This file was automatically generated and should not be edited.

import ApolloAPI

protocol MySchemaName_SelectionSet: ApolloAPI.SelectionSet & ApolloAPI.RootSelectionSet
where Schema == MySchemaName.SchemaMetadata {}

protocol MySchemaName_InlineFragment: ApolloAPI.SelectionSet & ApolloAPI.InlineFragment
where Schema == MySchemaName.SchemaMetadata {}

protocol MySchemaName_MutableSelectionSet: ApolloAPI.MutableRootSelectionSet
where Schema == MySchemaName.SchemaMetadata {}

protocol MySchemaName_MutableInlineFragment: ApolloAPI.MutableSelectionSet & ApolloAPI.InlineFragment
where Schema == MySchemaName.SchemaMetadata {}

extension MySchemaName {
  typealias SelectionSet = MySchemaName_SelectionSet

  typealias InlineFragment = MySchemaName_InlineFragment

  typealias MutableSelectionSet = MySchemaName_MutableSelectionSet

  typealias MutableInlineFragment = MySchemaName_MutableInlineFragment

  enum SchemaMetadata: ApolloAPI.SchemaMetadata {
    static let configuration: any ApolloAPI.SchemaConfiguration.Type = SchemaConfiguration.self

    static func objectType(forTypename typename: String) -> ApolloAPI.Object? {
      switch typename {
      case "Character": return MySchemaName.Objects.Character
      case "Characters": return MySchemaName.Objects.Characters
      case "Episode": return MySchemaName.Objects.Episode
      case "Info": return MySchemaName.Objects.Info
      case "Location": return MySchemaName.Objects.Location
      case "Query": return MySchemaName.Objects.Query
      default: return nil
      }
    }
  }

  enum Objects {}
  enum Interfaces {}
  enum Unions {}

}