import 'package:flutter/material.dart';
import 'package:mobile/global/ui/ui.dart';
import 'package:mobile/helpers/images.gen.dart';

class Logo extends StatelessWidget {
  final double width, height;

  const Logo({Key key, this.width = 110, this.height = 147}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final image = AppTheme.isDark ? IMG.global.darkLogoPNG : IMG.global.logoPNG;
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(image),
          fit: BoxFit.scaleDown,
        ),
      ),
    );
  }
}
