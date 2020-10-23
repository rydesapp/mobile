part of 'sign_in_cubit.dart';

@immutable
abstract class SignInState extends Equatable {
  final String email;
  final String password;

  SignInState({this.email, this.password});

  @override
  List<Object> get props => [email, password];
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
  SignInSuccess();
}

class SignInError extends SignInState {
  final String message;

  SignInError(this.message);
}
