import 'package:flutter/material.dart';
import 'package:mobile/blocs/blocs.dart';
import 'package:mobile/global/global.dart';
import 'package:mobile/pages/forgot_password/widgets/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ForgotPasswordFormView extends StatelessWidget {
  final GlobalKey<FormState> formKey;

  const ForgotPasswordFormView({Key key, this.formKey}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    final color = AppTheme.isDark ? lightestColor : darkColor;
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        ForgotPassworForm(formKey: formKey),
        Row(
          crossAxisAlignment: CrossAxisAlignment.end,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            TextButton(
              onPressed: () => Navigator.of(context).pop(),
              child: Text(
                i18n.translate.back,
                style: textTheme.bodyText2.copyWith(color: color),
              ),
            ),
            SubmitButton(onPressed: () {
              if (!formKey.currentState.validate()) {
                return;
              }
              context.bloc<ForgotPasswordCubit>().submit();
            })
          ],
        ),
      ],
    );
  }
}
