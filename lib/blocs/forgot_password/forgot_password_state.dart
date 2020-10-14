part of 'forgot_password_cubit.dart';

@immutable
abstract class ForgotPasswordState {}

class ForgotPasswordInitial extends ForgotPasswordState {}

class ForgotPasswordEmailChanged extends ForgotPasswordState {
  final String email;

  ForgotPasswordEmailChanged(this.email);
}

class ForgotPasswordLoading extends ForgotPasswordState {}

class ForgotPasswordSuccess extends ForgotPasswordState {
  final String message;

  ForgotPasswordSuccess(this.message);
}

class ForgotPasswordError extends ForgotPasswordState {
  final String message;

  ForgotPasswordError(this.message);
}
