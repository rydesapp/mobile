import 'package:flutter/material.dart';
import 'package:mobile/global/widgets/widgets.dart';
import 'package:mobile/pages/pages.dart';

class SignInPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BaseScaffold(
      child: SignInView(),
    );
  }
}
