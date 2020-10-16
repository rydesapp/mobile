import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mobile/blocs/sign_up/sign_up_cubit.dart';
import 'package:mobile/global/global.dart';
import 'package:mobile/pages/sign_up/view/sign_up_form_view.dart';

class SignUpView extends StatelessWidget {
  final formKey = GlobalKey<FormState>();
  SignUpView({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          LogoWithAccentTitle(
            title: i18n.translate.sign_up,
          ),
          Padding(
            padding: const EdgeInsets.only(
              left: Spacing.defaultSpacing,
              right: Spacing.defaultSpacing,
              bottom: Spacing.defaultSpacing,
            ),
            child: BlocBuilder<SignUpCubit, SignUpState>(
              builder: (context, state) {
                if (state is SignUpLoading) {
                  return FormLoading();
                }
                return SignUpFormView(
                  formKey: formKey,
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
