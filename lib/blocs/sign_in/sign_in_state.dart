part of 'sign_in_cubit.dart';

@immutable
abstract class SignInState {
  final String email;
  final String password;

  SignInState({this.email, this.password});
}

class SignInInitial extends SignInState {}

class SignInInputChanged extends SignInState {
  final String email;
  final String password;

  SignInInputChanged({this.email, this.password})
      : super(email: email, password: password);
}

class SignInLoading extends SignInState {}

class SignInSuccess extends SignInState {
  final bool loggedIn;

  SignInSuccess(this.loggedIn);
}

class SignInError extends SignInState {
  final String message;

  SignInError(this.message);
}
