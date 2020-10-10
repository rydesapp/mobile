import 'package:flutter/material.dart';
import 'package:mobile/global/ui/ui.dart';
import 'package:mobile/global/utils/i18n.dart';
import 'package:mobile/global/widgets/submit_button.dart';
import 'package:mobile/global/widgets/widgets.dart';

class ForgotPasswordView extends StatelessWidget {
  const ForgotPasswordView({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final textTheme = Theme.of(context).textTheme;
    final color = AppTheme.isDark ? lighterColor : darkColor;

    return SingleChildScrollView(
      child: Column(
        children: [
          LogoWithAccentTitle(
            title: i18n.text('forgot_password'),
          ),
          Padding(
            padding: const EdgeInsets.only(
              left: Spacing.defaultSpacing,
              right: Spacing.defaultSpacing,
              bottom: Spacing.defaultSpacing,
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(
                  height: height * 0.1,
                ),
                CTextField(
                  text: i18n.text('email_or_username'),
                  inputType: TextInputType.emailAddress,
                ),
                SizedBox(
                  height: (height * 0.2) -
                      Spacing.defaultSpacing +
                      Spacing.labelSpacing,
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    FlatButton(
                      padding: EdgeInsets.zero,
                      onPressed: () => Navigator.of(context).pop(),
                      child: Text(
                        i18n.text('back'),
                        style: textTheme.bodyText2.copyWith(color: color),
                      ),
                    ),
                    SubmitButton(onPressed: () => {})
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
