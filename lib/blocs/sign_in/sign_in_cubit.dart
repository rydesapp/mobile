import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';
import 'package:mobile/api/repos/rydes_repo.dart';
import 'package:mobile/global/utils/i18n.dart';
import 'package:shared_preferences/shared_preferences.dart';

part 'sign_in_state.dart';

class SignInCubit extends Cubit<SignInState> {
  final RydesRepo repo;

  SignInCubit(this.repo) : super(SignInInitial());

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
    try {
      final data = await repo.login(email, password);
    } catch (e) {
      emit(SignInSuccess(true));
    }
    emit(SignInInputChanged(email: email, password: password));
  }
}
