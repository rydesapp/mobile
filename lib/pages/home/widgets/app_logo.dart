part of 'widgets.dart';

class AppLogo extends StatelessWidget {
  const AppLogo({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Logo(),
          const SizedBox(
            height: Spacing.defaultSpacing,
          ),
          Text(
            i18n.translate.landing_sentence,
            style: Theme.of(context).textTheme.headline6.copyWith(
                  fontWeight: FontWeight.normal,
                ),
          ),
        ],
      ),
    );
  }
}
