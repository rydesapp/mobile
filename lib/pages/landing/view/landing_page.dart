import 'package:flutter/material.dart';
import 'package:mobile/global/global.dart';
import 'package:mobile/pages/landing/view/view.dart';

class LandingPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    AppTheme.isDark = Theme.of(context).brightness == Brightness.dark;
    i18n.context = context;

    return BaseScaffold(
      child: LandingView(),
      withNoDotsBG: false,
    );
  }
}
