part of 'queries.dart';

final signUpMutation = '''
mutation{
  signUp(user:{
    email:"a@a.com",
    firstName: "test",
    lastName:"test",
    password:"aaaaaa"
  }){uuid}
}
''';
