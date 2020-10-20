import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:mobile/gen/assets.gen.dart';
import 'package:mobile/global/ui/ui.dart';

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
    String image = withNoDots ? Assets.images.bgNoDots : Assets.images.bg;

    if (!AppTheme.isDark) {
      image = withNoDots ? Assets.images.lightBgNoDots : Assets.images.lightBg;
    }
    return Stack(
      children: [
        SvgPicture.asset(
          image,
          fit: BoxFit.cover,
        ),
        Container(
          height: size.height,
          width: size.width,
          child: child,
        ),
      ],
    );
  }
}

// height: size.height,
//     width: size.width,
//     child: child,
//     decoration: BoxDecoration(
//       image: DecorationImage(
//         image: AssetImage(
//           withNoDots ? IMG.global.bgNoDotsSVG : IMG.global.bgSVG,
//         ),
//         fit: BoxFit.cover,
//         colorFilter: ColorFilter.mode(
//           Colors.white.withOpacity(AppTheme.isDark ? 0 : 1),
//           BlendMode.softLight,
//         ),
//       ),
//     ),
