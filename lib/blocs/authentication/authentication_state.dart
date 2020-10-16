part of 'authentication_cubit.dart';

abstract class AuthenticationState extends Equatable {
  final bool loggedIn;
  const AuthenticationState({this.loggedIn = false});

  @override
  List<Object> get props => [];
}

class AuthenticationInitial extends AuthenticationState {}

class AuthenticationChanged extends AuthenticationState {
  final bool loggedIn;

  AuthenticationChanged({this.loggedIn}) : super(loggedIn: loggedIn);
}
