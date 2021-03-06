import 'package:flutter/material.dart';

import 'package:mobile/global/ui/ui.dart';

class CTextField extends StatelessWidget {
  final String text;
  final String intialValue;
  final TextInputType inputType;
  final TextEditingController controller;
  final bool obscureText;
  final bool autoFocus;
  final TextInputAction inputAction;
  final FocusNode focusNode;
  final Function validator;
  final Function onChanged;
  final Function onFieldSubmitted;

  const CTextField({
    Key key,
    this.text,
    this.intialValue,
    this.inputType,
    this.controller,
    this.obscureText = false,
    this.onChanged,
    this.validator,
    this.onFieldSubmitted,
    this.autoFocus = false,
    this.focusNode,
    this.inputAction = TextInputAction.done,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final color = AppTheme.isDark ? lightestColor : darkColor;
    final fieldColor = AppTheme.isDark ? darkColor : lighterColor;
    final textStyle =
        Theme.of(context).textTheme.bodyText2.copyWith(color: color);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        _buildLabel(textStyle),
        SizedBox(
          height: Spacing.labelSpacing,
        ),
        _buildField(textStyle, fieldColor),
      ],
    );
  }

  TextFormField _buildField(TextStyle textStyle, Color color) {
    return TextFormField(
      focusNode: focusNode,
      keyboardType: inputType,
      controller: controller,
      autocorrect: false,
      obscureText: obscureText,
      style: textStyle,
      validator: validator,
      onChanged: onChanged,
      initialValue: intialValue,
      onFieldSubmitted: onFieldSubmitted,
      autofocus: autoFocus,
      textInputAction: inputAction,
      decoration: InputDecoration(
        fillColor: color,
        filled: true,
        floatingLabelBehavior: FloatingLabelBehavior.always,
        border: OutlineInputBorder(
          borderSide: BorderSide.none,
          borderRadius: BorderRadius.circular(Borders.radius),
        ),
        contentPadding: EdgeInsets.symmetric(
            horizontal: Spacing.defaultSpacing, vertical: 0),
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
