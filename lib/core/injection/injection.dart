import 'package:flixgo/core/router/app_router.dart';
import 'package:get_it/get_it.dart';

final getIt = GetIt.instance;

Future<void> initDependencies() async {
  getIt.registerSingleton<AppRouter>(AppRouter());
}
