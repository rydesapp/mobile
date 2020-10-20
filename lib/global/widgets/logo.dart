import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:mobile/gen/assets.gen.dart';
import 'package:mobile/global/ui/ui.dart';

class Logo extends StatelessWidget {
  final double width, height;

  const Logo({Key key, this.width = 110, this.height = 147}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final image = AppTheme.isDark ? Assets.images.darkLogo : Assets.images.logo;
    return SvgPicture.asset(
      image,
      height: height,
      width: width,
    );
  }
}
