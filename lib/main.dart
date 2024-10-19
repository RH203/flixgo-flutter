import 'package:flixgo/core/injection/injection.dart';
import 'package:flixgo/src/app/app.dart';
import 'package:flutter/material.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await initDependencies();
  runApp(
    const App(),
  );
}
