import 'package:flutter/material.dart';
import 'package:mobile/app.dart';
import 'package:mobile/global/utils/i18n.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await i18n.init();
  runApp(App());
}
