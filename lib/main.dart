import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mobile/app.dart';
import 'package:mobile/blocs/blocs.dart';
import 'package:mobile/global/utils/i18n.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await i18n.init();
  final app = MultiBlocProvider(providers: [
    BlocProvider(create: (_) => SettingsCubit()),
    BlocProvider(create: (_) => AuthenticationCubit()),
  ], child: App());
  runApp(app);
}
