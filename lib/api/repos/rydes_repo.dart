import 'dart:convert';

import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:gql/language.dart';
import 'package:mobile/api/graph_ql/graphql_client.dart';
import 'package:mobile/api/graph_ql/queries/queries.dart';
import 'package:http/http.dart' as http;

class RydesRepo {
  final GraphQLClient _graphQLclient = RydesGraphQLClient.client;

  RydesRepo._();

  Future register(String email, String password) async {
    QueryResult result = await _graphQLclient.query(
      QueryOptions(
          document: parseString(loginQuery),
          fetchPolicy: FetchPolicy.networkOnly,
          variables: {
            'email': email,
            'password': password,
          }),
    );
    if (!result.hasException || result.data != null) return result.data;
    return {};
  }

  Future login(String email, String password) async {
    final http.Response response = await http.post(
      '${apiLinks['dev']}login',
      headers: <String, String>{
        'Content-Type': 'application/json; charset=UTF-8',
      },
      body: json.encode(
        {
          'email': email,
          'password': password,
        },
      ),
    );
    if (response.statusCode != 200) {
      throw Exception('Failed to login');
    }
    return response.body;
  }
}

final rydesRepo = RydesRepo._();
