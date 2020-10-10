import 'package:flutter/material.dart';

import 'package:mobile/global/ui/ui.dart';

class CTextField extends StatelessWidget {
  final String text;
  final TextInputType inputType;
  final TextEditingController controller;
  final bool obscureText;

  const CTextField({
    Key key,
    this.text,
    this.inputType,
    this.controller,
    this.obscureText = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final color = AppTheme.isDark ? lighterColor : darkColor;
    final textStyle =
        Theme.of(context).textTheme.bodyText2.copyWith(color: color);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        _buildLabel(textStyle),
        SizedBox(
          height: Spacing.labelSpacing,
        ),
        _buildField(textStyle),
      ],
    );
  }

  TextField _buildField(TextStyle textStyle) {
    return TextField(
      keyboardType: inputType,
      controller: controller,
      autocorrect: false,
      obscureText: obscureText,
      style: textStyle,
      decoration: InputDecoration(
        fillColor: darkColor,
        filled: true,
        floatingLabelBehavior: FloatingLabelBehavior.always,
        border: OutlineInputBorder(
          borderSide: BorderSide.none,
          borderRadius: BorderRadius.circular(Borders.radius),
        ),
      ),
    );
  }

  Text _buildLabel(TextStyle textStyle) {
    return Text(
      text,
      style: textStyle,
    );
  }
}
