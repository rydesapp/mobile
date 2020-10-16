import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'sign_up_state.dart';

class SignUpCubit extends Cubit<SignUpState> {
  SignUpCubit() : super(SignUpInitial());

  SignUpInputChanged get _getInputChangedState =>
      state is SignUpInputChanged ? state : SignUpInputChanged();

  emailChanged(String value) {
    emit(_getInputChangedState.copyWith(email: value));
  }

  firstNameChanged(String value) {
    emit(_getInputChangedState.copyWith(firstName: value));
  }

  lastNameChanged(String value) {
    emit(_getInputChangedState.copyWith(lastName: value));
  }

  passwordChanged(String value) {
    emit(_getInputChangedState.copyWith(password: value));
  }

  submit() async {
    final oldState = state;
    emit(SignUpLoading());
    await Future.delayed(Duration(seconds: 1));
    emit(SignUpError('meh'));
    emit(
      SignUpInputChanged(
        email: oldState.email,
        firstName: oldState.firstName,
        lastName: oldState.lastName,
      ),
    );
  }
}
