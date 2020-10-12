import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mobile/blocs/sign_in/sign_in_bloc.dart';
import 'package:mobile/global/widgets/widgets.dart';
import 'package:mobile/pages/pages.dart';

class SignInPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BaseScaffold(
      child: BlocProvider(
        create: (context) => SignInBloc(),
        child: SignInView(),
      ),
    );
  }
}
