import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:mobile/global/global.dart';
import 'package:mobile/global/widgets/submit_button.dart';

class SignInView extends StatelessWidget {
  const SignInView({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final textTheme = Theme.of(context).textTheme;
    final color = AppTheme.isDark ? lighterColor : darkColor;
    return SingleChildScrollView(
      child: Column(
        children: [
          LogoWithAccentTitle(
            title: i18n.text('sign_in'),
          ),
          Padding(
            padding: const EdgeInsets.only(
              left: Spacing.defaultSpacing,
              right: Spacing.defaultSpacing,
              bottom: Spacing.defaultSpacing,
            ),
            child: Column(
              children: [
                SizedBox(
                  height: height * .1,
                ),
                Column(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CTextField(
                      text: i18n.text('email_or_username'),
                      inputType: TextInputType.emailAddress,
                    ),
                    SizedBox(
                      height: Spacing.defaultSpacing,
                    ),
                    CTextField(
                      text: i18n.text('password'),
                      obscureText: true,
                    ),
                  ],
                ),
                SizedBox(
                  height: height * .1,
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    FlatButton(
                      padding: EdgeInsets.zero,
                      onPressed: () => Navigator.of(context).pushNamed(
                        '/reset_password',
                      ),
                      child: Text(
                        i18n.text('forgot_password') + '?',
                        style: textTheme.bodyText2.copyWith(color: color),
                      ),
                    ),
                    SubmitButton(
                      onPressed: () => {},
                    )
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
