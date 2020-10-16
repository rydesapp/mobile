part of 'queries.dart';

final loginQuery = '''
query{
  rates(currency:"JOD"){
    currency,
    rate
  }
}
''';
