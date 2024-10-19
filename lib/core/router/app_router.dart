import 'package:flixgo/src/auth_screen/presentation/signin_view.dart';
import 'package:flixgo/src/auth_screen/presentation/signup_view.dart';
import 'package:flixgo/src/home_screen/presentation/home_view.dart';
import 'package:flixgo/src/onboard_screen/presentation/onboard_view.dart';
import 'package:go_router/go_router.dart';

class AppRouter {
  AppRouter();

  final router = GoRouter(
    initialLocation: "/onboarding",
    routes: [
      // Onboard route
      GoRoute(
        path: "/onboarding",
        builder: (context, state) => const OnboardView(),
      ),
      // Auth routes
      GoRoute(
        path: "/sign-up",
        builder: (context, state) => const SignupView(),
      ),
      GoRoute(
        path: "/sign-in",
        builder: (context, state) => const SigninView(),
      ),
      // Homeview
      GoRoute(
        path: "/",
        builder: (context, state) => const HomeView(),
      ),
    ],
  );
}
