part of 'sign_up_cubit.dart';

abstract class SignUpState extends Equatable {
  final String email, password, firstName, lastName;

  const SignUpState({
    this.email,
    this.password,
    this.firstName,
    this.lastName,
  });

  @override
  List<Object> get props => [email, password, firstName, lastName];
}

class SignUpInitial extends SignUpState {}

class SignUpInputChanged extends SignUpState {
  final String email, password, firstName, lastName;

  const SignUpInputChanged({
    this.email,
    this.password,
    this.firstName,
    this.lastName,
  }) : super(
          email: email,
          password: password,
          firstName: firstName,
          lastName: lastName,
        );

  SignUpInputChanged copyWith(
          {String email, String password, String firstName, String lastName}) =>
      SignUpInputChanged(
        email: email ?? this.email,
        password: password ?? this.password,
        firstName: firstName ?? this.firstName,
        lastName: lastName ?? this.lastName,
      );
}

class SignUpLoading extends SignUpState {}

class SignUpSuccess extends SignUpState {
  final String message;

  SignUpSuccess(this.message);
}

class SignUpError extends SignUpState {
  final String message;

  SignUpError(this.message);
}
