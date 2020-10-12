import 'package:flutter/material.dart';
import 'package:mobile/blocs/sign_in/sign_in_bloc.dart';
import 'package:mobile/global/global.dart';
import 'package:mobile/pages/sign_in/widgets/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SignInFormView extends StatelessWidget {
  const SignInFormView({
    Key key,
    @required GlobalKey<FormState> formKey,
  })  : _formKey = formKey,
        super(key: key);

  final GlobalKey<FormState> _formKey;

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final textTheme = Theme.of(context).textTheme;

    return Column(
      children: [
        SignInPadding(height: height),
        SignInForm(
          formKey: _formKey,
        ),
        SignInPadding(height: height),
        Row(
          crossAxisAlignment: CrossAxisAlignment.end,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            FlatButton(
              padding: EdgeInsets.zero,
              onPressed: () => Navigator.of(context).pushNamed(
                AppRoutes.RESET_PASSWORD,
              ),
              child: Text(
                AppLocaleStrings.forgotPassword + '?',
                style: textTheme.bodyText2
                    .copyWith(color: AppTheme.themedTextColor),
              ),
            ),
            SubmitButton(
              onPressed: () {
                if (!_formKey.currentState.validate()) {
                  return;
                }
                context.bloc<SignInBloc>().add(SignInSubmitted());
              },
            )
          ],
        )
      ],
    );
  }
}
