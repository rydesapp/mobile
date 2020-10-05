import 'package:flutter/material.dart';
import 'package:mobile/global/ui/ui.dart';

class RectBtn extends StatelessWidget {
  final Widget child;
  final Function onPressed;
  final Color color;

  const RectBtn({
    Key key,
    this.child,
    this.color = primaryColor,
    @required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(Borders.radius),
      ),
      minWidth: 135,
      padding: const EdgeInsets.symmetric(
        horizontal: Spacing.defaultSpacing * 2,
      ),
      onPressed: this.onPressed,
      color: color,
      child: child,
      splashColor: lightColor,
      elevation: 0,
    );
  }
}
