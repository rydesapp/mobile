import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mobile/app.dart';
import 'package:mobile/blocs/blocs.dart';
import 'package:mobile/global/utils/i18n.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await i18n.init();
  final app = BlocProvider<SettingsCubit>(
    create: (_) => SettingsCubit(),
    child: App(),
  );
  runApp(app);
}
