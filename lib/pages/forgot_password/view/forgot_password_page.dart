import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mobile/blocs/blocs.dart';
import 'package:mobile/global/widgets/widgets.dart';
import 'package:mobile/pages/forgot_password/view/view.dart';

class ForgotPasswordPage extends StatelessWidget {
  const ForgotPasswordPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BaseScaffold(
      child: BlocProvider<ForgotPasswordCubit>(
        create: (context) => ForgotPasswordCubit(),
        child: ForgotPasswordView(),
      ),
    );
  }
}
