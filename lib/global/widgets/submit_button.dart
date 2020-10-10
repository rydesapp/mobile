import 'package:flutter/material.dart';
import 'package:mobile/global/ui/ui.dart';

class SubmitButton extends StatelessWidget {
  final Function onPressed;
  final double _size = 62.0;
  final double _radius = Borders.radius * 2;
  const SubmitButton({Key key, @required this.onPressed}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(_radius),
      ),
      elevation: 0,
      padding: EdgeInsets.zero,
      height: _size,
      minWidth: _size,
      color: primaryColor,
      child: Container(
        child: Icon(
          Icons.chevron_right,
          size: 48,
        ),
      ),
      onPressed: onPressed,
    );
  }
}
