import 'package:flutter/material.dart';
import 'package:mobile/global/ui/ui.dart';
import 'package:mobile/pages/home/view/view.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    AppTheme.isDark = Theme.of(context).brightness == Brightness.dark;
    return Scaffold(
      body: HomeView(),
    );
  }
}
