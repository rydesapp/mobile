import 'package:flutter/material.dart';
import 'package:mobile/global/global.dart';
import 'package:mobile/pages/home/widgets/widgets.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key key}) : super(key: key);

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
