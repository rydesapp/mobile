import 'package:graphql_flutter/graphql_flutter.dart';

const Map<String, String> apiLinks = {
  "dev": "http://192.168.1.122:1234/",
  "prod": "https://drivees.herokuapp.com/api"
};

class RydesGraphQLClient {
  const RydesGraphQLClient._();

  static final HttpLink _httpLink = HttpLink(apiLinks['dev']);

  static final GraphQLCache _cache = GraphQLCache(store: InMemoryStore());

  static final client = GraphQLClient(link: _httpLink, cache: _cache);
}
