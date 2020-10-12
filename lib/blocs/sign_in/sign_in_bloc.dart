import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'sign_in_event.dart';
part 'sign_in_state.dart';

class SignInBloc extends Bloc<SignInEvent, SignInState> {
  SignInBloc() : super(SignInInitial());

  @override
  Stream<SignInState> mapEventToState(
    SignInEvent event,
  ) async* {
    if (event is SignInEmailChanged) {
      yield SignInInputChanged(email: event.email, password: state.password);
    }
    if (event is SignInPasswordChanged) {
      yield SignInInputChanged(password: event.password, email: state.email);
    }
    if (event is SignInSubmitted) {
      final email = state.email;
      final password = state.password;
      yield SignInLoading();
      await Future.delayed(Duration(seconds: 1));
      yield SignInError('oh come on');
      yield SignInInputChanged(email: email, password: password);
    }
  }
}
