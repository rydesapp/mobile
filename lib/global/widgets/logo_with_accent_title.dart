import 'package:flutter/material.dart';
import 'package:mobile/global/ui/ui.dart';

import 'logo.dart';

class LogoWithAccentTitle extends StatelessWidget {
  final String title;

  const LogoWithAccentTitle({Key key, this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final topPadding = MediaQuery.of(context).size.height * 0.15;

    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        SizedBox(
          height: topPadding,
        ),
        Container(
          padding: EdgeInsets.only(bottom: Spacing.defaultSpacing),
          child: Logo(
            width: 90,
            height: 120,
          ),
          decoration: BoxDecoration(
            border: Border(
              bottom: BorderSide(
                width: 1,
                color: logoBorderColor,
              ),
            ),
          ),
        ),
        SizedBox(
          height: Spacing.defaultSpacing,
        ),
        Container(
          width: 155,
          alignment: Alignment.center,
          child: Text(
            title,
            textAlign: TextAlign.center,
            style: Theme.of(context).textTheme.headline4.copyWith(
                  color: accentColor,
                ),
          ),
        ),
      ],
    );
  }
}
