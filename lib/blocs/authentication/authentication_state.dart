part of 'authentication_cubit.dart';

enum AuthStatus { loggedIn, guest }

abstract class AuthenticationState extends Equatable {
  final AuthStatus authStatus;
  const AuthenticationState({this.authStatus = AuthStatus.guest});

  @override
  List<Object> get props => [];
}

class AuthenticationInitial extends AuthenticationState {}

class AuthenticationChanged extends AuthenticationState {
  final AuthStatus authStatus;

  AuthenticationChanged({this.authStatus}) : super(authStatus: authStatus);
}
