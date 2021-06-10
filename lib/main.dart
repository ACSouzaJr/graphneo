// @dart=2.9

import 'dart:io';
import 'package:flutter/foundation.dart' show kIsWeb;

import 'package:flutter/material.dart';
import 'package:graphneo/services/graphql_api.graphql.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:graphneo/widgets/graphql_provider.dart';

String get host {
  if (kIsWeb) {
    return 'localhost';
  } else if (Platform.isAndroid) {
    return '10.0.2.2';
  } else {
    return 'localhost';
  }
}

// String host = 'localhost';

void main() async {
  await initHiveForFlutter();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GraphqlProvider(
      uri: "http://$host:9002/graphql",
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: MyHomePage(),
      ),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Companies'),
      ),
      body: Query(
        options: QueryOptions(
          document: CompaniesDataQuery().document,
        ),
        builder: (
          QueryResult result, {
          Future<QueryResult> Function() refetch,
          FetchMore fetchMore,
        }) {
          if (result.hasException) {
            return Text(result.exception.toString());
          }

          if (result.isLoading) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          }

          final allCompanies =
              CompaniesData$Query.fromJson(result.data).allCompanies;

          return ListView.builder(
            itemBuilder: (_, index) {
              return ListTile(
                leading: Icon(Icons.card_travel),
                title: Text(allCompanies[index].name),
                subtitle: Text(allCompanies[index].industry),
              );
            },
            itemCount: allCompanies.length,
          );
        },
      ),
    );
  }
}
