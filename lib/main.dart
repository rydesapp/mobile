import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mobile/app.dart';
import 'package:mobile/blocs/settings/settings_bloc.dart';
import 'package:mobile/global/utils/i18n.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await i18n.init();
  final app = BlocProvider<SettingsBloc>(
    create: (_) => SettingsBloc(),
    child: App(),
  );
  runApp(app);
}
