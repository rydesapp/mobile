final signUpMutation = '''
mutation{
  signUp(user:{
    email:\$email,
    firstName: \$firstName,
    lastName:\$lastName,
    password:\$password
  }){id}
}
''';
final profileQuery = '''
query{
  me{
     firstName
  }
}
''';
