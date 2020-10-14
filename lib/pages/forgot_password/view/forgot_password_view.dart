import 'package:flutter/material.dart';
import 'package:mobile/blocs/blocs.dart';
import 'package:mobile/global/global.dart';
import 'package:mobile/global/widgets/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mobile/pages/forgot_password/forgot_password.dart';

class ForgotPasswordView extends StatelessWidget {
  ForgotPasswordView({Key key}) : super(key: key);
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          LogoWithAccentTitle(
            title: i18n.translate.forgot_password,
          ),
          Padding(
            padding: const EdgeInsets.only(
              left: Spacing.defaultSpacing,
              right: Spacing.defaultSpacing,
              bottom: Spacing.defaultSpacing,
            ),
            child: BlocConsumer<ForgotPasswordCubit, ForgotPasswordState>(
                builder: (context, state) {
              if (state is ForgotPasswordLoading) {
                return loadingProgress(context);
              }
              return ForgotPasswordFormView(
                formKey: _formKey,
              );
            }, listener: (context, state) {
              if (state is ForgotPasswordSuccess) {
                Scaffold.of(context).showSnackBar(SnackBar(
                  content: Text(state.message),
                ));
              }
            }),
          ),
        ],
      ),
    );
  }

  loadingProgress(context) => Container(
        alignment: Alignment.center,
        height: MediaQuery.of(context).size.height * 0.4,
        child: CircularProgressIndicator(
          strokeWidth: 3,
        ),
      );
}
