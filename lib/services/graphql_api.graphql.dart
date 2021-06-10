// GENERATED CODE - DO NOT MODIFY BY HAND
// @dart = 2.12

import 'package:artemis/artemis.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:equatable/equatable.dart';
import 'package:gql/ast.dart';
part 'graphql_api.graphql.g.dart';

@JsonSerializable(explicitToJson: true)
class CompaniesData$Query$Company extends JsonSerializable with EquatableMixin {
  CompaniesData$Query$Company();

  factory CompaniesData$Query$Company.fromJson(Map<String, dynamic> json) =>
      _$CompaniesData$Query$CompanyFromJson(json);

  String? id;

  String? name;

  String? industry;

  @JsonKey(name: '__typename')
  String? $$typename;

  @override
  List<Object?> get props => [id, name, industry, $$typename];
  @override
  Map<String, dynamic> toJson() => _$CompaniesData$Query$CompanyToJson(this);
}

@JsonSerializable(explicitToJson: true)
class CompaniesData$Query extends JsonSerializable with EquatableMixin {
  CompaniesData$Query();

  factory CompaniesData$Query.fromJson(Map<String, dynamic> json) =>
      _$CompaniesData$QueryFromJson(json);

  List<CompaniesData$Query$Company>? allCompanies;

  @override
  List<Object?> get props => [allCompanies];
  @override
  Map<String, dynamic> toJson() => _$CompaniesData$QueryToJson(this);
}

final COMPANIES_DATA_QUERY_DOCUMENT = DocumentNode(definitions: [
  OperationDefinitionNode(
      type: OperationType.query,
      name: NameNode(value: 'CompaniesData'),
      variableDefinitions: [],
      directives: [],
      selectionSet: SelectionSetNode(selections: [
        FieldNode(
            name: NameNode(value: 'allCompanies'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FieldNode(
                  name: NameNode(value: 'id'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null),
              FieldNode(
                  name: NameNode(value: 'name'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null),
              FieldNode(
                  name: NameNode(value: 'industry'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null),
              FieldNode(
                  name: NameNode(value: '__typename'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null)
            ]))
      ]))
]);

class CompaniesDataQuery
    extends GraphQLQuery<CompaniesData$Query, JsonSerializable> {
  CompaniesDataQuery();

  @override
  final DocumentNode document = COMPANIES_DATA_QUERY_DOCUMENT;

  @override
  final String operationName = 'CompaniesData';

  @override
  List<Object?> get props => [document, operationName];
  @override
  CompaniesData$Query parse(Map<String, dynamic> json) =>
      CompaniesData$Query.fromJson(json);
}
