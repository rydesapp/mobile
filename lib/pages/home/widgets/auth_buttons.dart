part of 'widgets.dart';

class AuthButtons extends StatelessWidget {
  const AuthButtons({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        RectBtn(
          child: Text(
            AppLocaleStrings.signUp,
          ),
          onPressed: () => {},
        ),
        const SizedBox(
          width: Spacing.defaultSpacing,
        ),
        RectBtn(
          color: accentColor,
          child: Text(
            AppLocaleStrings.signIn,
          ),
          onPressed: () => {Navigator.of(context).pushNamed(AppRoutes.SIGN_IN)},
        )
      ],
    );
  }
}
