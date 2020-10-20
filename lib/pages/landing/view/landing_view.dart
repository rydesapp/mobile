import 'package:flutter/material.dart';
import 'package:mobile/global/global.dart';
import 'package:mobile/pages/landing/widgets/widgets.dart';

class LandingView extends StatelessWidget {
  const LandingView({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        AppLogo(),
        Padding(
          padding: const EdgeInsets.only(bottom: Spacing.bottomLargeSpace),
          child: AuthButtons(),
        ),
      ],
    );
  }
}
