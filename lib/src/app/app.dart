import 'package:flixgo/core/injection/injection.dart';
import 'package:flixgo/core/router/app_router.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: "Flixgo",
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: GoogleFonts.poppins().fontFamily,
      ),
      routerConfig: getIt<AppRouter>().router,
    );
  }
}
