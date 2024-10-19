import 'package:bloc/bloc.dart';
import 'package:flixgo/app_observer.dart';
import 'package:flixgo/core/injection/injection.dart';
import 'package:flixgo/src/app/app.dart';
import 'package:flutter/material.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  Bloc.observer = const AppBlocObserver();
  await initDependencies();
  runApp(
    const App(),
  );
}
