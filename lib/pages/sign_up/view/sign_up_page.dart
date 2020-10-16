import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mobile/blocs/sign_up/sign_up_cubit.dart';
import 'package:mobile/global/widgets/base_scaffold.dart';
import 'package:mobile/pages/sign_up/view/sign_up_view.dart';

class SignUpPage extends StatelessWidget {
  const SignUpPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BaseScaffold(
      child: BlocProvider(
        create: (context) => SignUpCubit(),
        child: SignUpView(),
      ),
    );
  }
}
