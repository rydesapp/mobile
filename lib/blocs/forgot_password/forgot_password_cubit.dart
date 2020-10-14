import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'forgot_password_state.dart';

class ForgotPasswordCubit extends Cubit<ForgotPasswordState> {
  ForgotPasswordCubit() : super(ForgotPasswordInitial());

  changeEmail(String email) {
    emit(ForgotPasswordEmailChanged(email));
  }

  submit() async {
    final email = (state as ForgotPasswordEmailChanged)?.email;
    emit(ForgotPasswordLoading());
    await Future.delayed(Duration(seconds: 1));
    emit(ForgotPasswordSuccess("All done nigg"));
    emit(ForgotPasswordEmailChanged(email));
  }
}
