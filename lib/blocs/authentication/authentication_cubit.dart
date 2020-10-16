import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'authentication_state.dart';

class AuthenticationCubit extends Cubit<AuthenticationState> {
  AuthenticationCubit() : super(AuthenticationInitial());

  login() {
    emit(AuthenticationChanged(loggedIn: true));
  }

  logout() {
    emit(AuthenticationChanged(loggedIn: false));
  }
}
