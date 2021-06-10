// GENERATED CODE - DO NOT MODIFY BY HAND
// @dart=2.12

part of 'graphql_api.graphql.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CompaniesData$Query$Company _$CompaniesData$Query$CompanyFromJson(
    Map<String, dynamic> json) {
  return CompaniesData$Query$Company()
    ..id = json['id'] as String?
    ..name = json['name'] as String?
    ..industry = json['industry'] as String?
    ..$$typename = json['__typename'] as String?;
}

Map<String, dynamic> _$CompaniesData$Query$CompanyToJson(
        CompaniesData$Query$Company instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'industry': instance.industry,
      '__typename': instance.$$typename,
    };

CompaniesData$Query _$CompaniesData$QueryFromJson(Map<String, dynamic> json) {
  return CompaniesData$Query()
    ..allCompanies = (json['allCompanies'] as List<dynamic>?)
        ?.map((e) =>
            CompaniesData$Query$Company.fromJson(e as Map<String, dynamic>))
        .toList();
}

Map<String, dynamic> _$CompaniesData$QueryToJson(
        CompaniesData$Query instance) =>
    <String, dynamic>{
      'allCompanies': instance.allCompanies?.map((e) => e.toJson()).toList(),
    };
