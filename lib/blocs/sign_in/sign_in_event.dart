part of 'sign_in_bloc.dart';

@immutable
abstract class SignInEvent {}

class SignInEmailChanged extends SignInEvent {
  final String email;

  SignInEmailChanged(this.email);
}

class SignInPasswordChanged extends SignInEvent {
  final String password;

  SignInPasswordChanged(this.password);
}

class SignInSubmitted extends SignInEvent {}
