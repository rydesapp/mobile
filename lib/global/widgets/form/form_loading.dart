import 'package:flutter/material.dart';
class FormLoading extends StatelessWidget {
  const FormLoading({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        alignment: Alignment.center,
        height: MediaQuery.of(context).size.height * 0.4,
        child: CircularProgressIndicator(
          strokeWidth: 3,
        ),
      );
  }
}