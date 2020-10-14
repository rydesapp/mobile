import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'sign_in_state.dart';

class SignInCubit extends Cubit<SignInState> {
  SignInCubit() : super(SignInInitial());

  emailChanged(String value) {
    emit(SignInInputChanged(email: value, password: state.password));
  }

  passwordChanged(String value) {
    emit(SignInInputChanged(email: state.email, password: value));
  }

  submit() async {
    final email = state.email;
    final password = state.password;
    emit(SignInLoading());
    await Future.delayed(Duration(seconds: 1));
    emit(SignInError('oh come on'));
    emit(SignInInputChanged(email: email, password: password));
  }
}
