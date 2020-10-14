import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mobile/blocs/sign_in/sign_in.dart';
import 'package:mobile/global/global.dart';
import 'package:mobile/pages/sign_in/view/sign_in_form_view.dart';
import 'package:flutter_gen/gen_l10n/translations.dart';

class SignInView extends StatelessWidget {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          LogoWithAccentTitle(
            title: Translations.of(context).sign_in,
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
                  Scaffold.of(context).showSnackBar(
                    SnackBar(
                        content: Text(
                      'Signed in, redirecting...',
                    )),
                  );
                  Navigator.of(context)
                      .pushReplacementNamed(AppRoutes.RESET_PASSWORD);
                }
              },
              builder: (context, state) {
                if (state is SignInLoading) {
                  return loadingProgress(context);
                }
                return SignInFormView(formKey: _formKey);
              },
            ),
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
