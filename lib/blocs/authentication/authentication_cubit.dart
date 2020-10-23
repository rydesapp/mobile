import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:mobile/api/repos/rydes_repo.dart';

part 'authentication_state.dart';

class AuthenticationCubit extends Cubit<AuthenticationState> {
  final RydesRepo repo;

  AuthenticationCubit(
    this.repo,
  ) : super(AuthenticationInitial());

  login() {
    emit(AuthenticationChanged(authStatus: AuthStatus.loggedIn));
  }

  logout() {
    emit(AuthenticationChanged(authStatus: AuthStatus.guest));
  }

  me() async {
    try {
      final data = await repo.me();
      print(data);
    } catch (e) {
      print(e);
    }
  }
}
