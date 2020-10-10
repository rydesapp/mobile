import 'package:flutter/material.dart';
import 'package:mobile/global/widgets/widgets.dart';

class BaseScaffold extends Scaffold {
  final Widget child;
  final bool withNoDotsBG;
  BaseScaffold({this.child, this.withNoDotsBG = true})
      : super(
          body: AppBackground(
            child: child,
            withNoDots: withNoDotsBG,
          ),
        );
}
