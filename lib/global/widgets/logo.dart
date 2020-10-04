import 'package:flutter/material.dart';
import 'package:mobile/global/ui/ui.dart';
import 'package:mobile/helpers/images.gen.dart';

class Logo extends StatelessWidget {
  final double width;
  const Logo({Key key, this.width = 110}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final image = AppTheme.isDark ? IMG.global.darkLogoPNG : IMG.global.logoPNG;
    return Image.asset(
      image,
      width: width,
    );
  }
}
