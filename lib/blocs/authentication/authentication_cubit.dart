import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'authentication_state.dart';

class AuthenticationCubit extends Cubit<AuthenticationState> {
  AuthenticationCubit() : super(AuthenticationInitial());

  login() {
    
    emit(AuthenticationChanged(authStatus: AuthStatus.loggedIn));
  }

  logout() {
    emit(AuthenticationChanged(authStatus: AuthStatus.guest));
  }
}
