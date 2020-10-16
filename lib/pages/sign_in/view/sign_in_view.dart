import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mobile/blocs/blocs.dart';
import 'package:mobile/blocs/sign_in/sign_in.dart';
import 'package:mobile/global/global.dart';
import 'package:mobile/global/widgets/form/form_loading.dart';
import 'package:mobile/pages/sign_in/view/sign_in_form_view.dart';

class SignInView extends StatelessWidget {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          LogoWithAccentTitle(
            title: i18n.translate.sign_in,
          ),
          Padding(
            padding: const EdgeInsets.only(
              left: Spacing.defaultSpacing,
              right: Spacing.defaultSpacing,
              bottom: Spacing.defaultSpacing,
            ),
            child: BlocConsumer<SignInCubit, SignInState>(
              listener: (context, state) {
                if (state is SignInError) {
                  Scaffold.of(context).showSnackBar(
                    SnackBar(
                        content: Text(
                      state.message,
                    )),
                  );
                }
                if (state is SignInSuccess) {
                  context.bloc<AuthenticationCubit>().login();
                  Navigator.of(context).pop();
                }
              },
              builder: (context, state) {
                if (state is SignInLoading) {
                  return FormLoading();
                }
                return SignInFormView(formKey: _formKey);
              },
            ),
          ),
        ],
      ),
    );
  }
}
