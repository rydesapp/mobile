import 'package:flutter/material.dart';
import 'package:mobile/global/global.dart';
import 'package:mobile/pages/home/view/view.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    AppTheme.isDark = Theme.of(context).brightness == Brightness.dark;
    i18n.context = context;

    return BaseScaffold(
      child: HomeView(),
      withNoDotsBG: false,
    );
  }
}
