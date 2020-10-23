import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:mobile/blocs/blocs.dart';
import 'package:mobile/pages/pages.dart';

class RootPage extends StatelessWidget {
  const RootPage({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AuthenticationCubit, AuthenticationState>(
      builder: (context, state) {
        return state.authStatus == AuthStatus.guest
            ? LandingPage()
            : HomePage();
      },
    );
  }
}
