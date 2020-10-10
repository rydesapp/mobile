import 'package:flutter/material.dart';
import 'package:mobile/global/ui/ui.dart';
import 'package:mobile/helpers/images.gen.dart';

class AppBackground extends StatelessWidget {
  final Widget child;
  final bool withNoDots;

  const AppBackground({
    Key key,
    @required this.child,
    this.withNoDots = true,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    AppTheme.isDark = Theme.of(context).brightness == Brightness.dark;

    return Container(
      height: size.height,
      width: size.width,
      child: child,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(
            withNoDots ? IMG.global.bgNoDotsPNG : IMG.global.bgPNG,
          ),
          fit: BoxFit.cover,
          colorFilter: ColorFilter.mode(
            Colors.white.withOpacity(AppTheme.isDark ? 0 : 1),
            BlendMode.softLight,
          ),
        ),
      ),
    );
  }
}
