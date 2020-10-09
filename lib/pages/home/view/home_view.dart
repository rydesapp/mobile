import 'package:flutter/material.dart';
import 'package:mobile/global/ui/ui.dart';
import 'package:mobile/helpers/images.gen.dart';
import 'package:mobile/pages/home/widgets/widgets.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: _buildBackground(),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          AppLogo(),
          Padding(
            padding: const EdgeInsets.only(bottom: Spacing.bottomLargeSpace),
            child: AuthButtons(),
          ),
        ],
      ),
    );
  }

  BoxDecoration _buildBackground() {
    return BoxDecoration(
      image: DecorationImage(
        image: AssetImage(
          IMG.global.bgPNG,
        ),
        fit: BoxFit.cover,
        colorFilter: ColorFilter.mode(
          Colors.white.withOpacity(AppTheme.isDark ? 0 : 1),
          BlendMode.softLight,
        ),
      ),
    );
  }
}
