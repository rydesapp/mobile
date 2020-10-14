import 'package:flutter/material.dart';
import 'package:mobile/blocs/sign_in/sign_in.dart';
import 'package:mobile/global/global.dart';
import 'package:mobile/pages/sign_in/widgets/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_gen/gen_l10n/translations.dart';

class SignInFormView extends StatelessWidget {
  final GlobalKey<FormState> formKey;

  const SignInFormView({Key key, this.formKey}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final textTheme = Theme.of(context).textTheme;

    return Column(
      children: [
        SignInPadding(height: height),
        SignInForm(
          formKey: formKey,
        ),
        SignInPadding(height: height),
        Row(
          crossAxisAlignment: CrossAxisAlignment.end,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            TextButton(
              onPressed: () => Navigator.of(context).pushNamed(
                AppRoutes.RESET_PASSWORD,
              ),
              child: Text(
                Translations.of(context).forgot_password + '?',
                style: textTheme.bodyText2
                    .copyWith(color: AppTheme.themedTextColor),
              ),
            ),
            SubmitButton(
              onPressed: () {
                if (!formKey.currentState.validate()) {
                  return;
                }
                context.bloc<SignInCubit>().submit();
              },
            )
          ],
        )
      ],
    );
  }
}
