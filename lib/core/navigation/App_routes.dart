import 'package:go_router/go_router.dart';
import 'package:workspace_app/Features/Splash/Splash_view.dart';
import 'package:workspace_app/Features/onboarding/onboarding_view.dart';
import 'package:workspace_app/core/navigation/routes.dart';

class AppRoutes {
  static List<GoRoute> route = [
    GoRoute(
      path: Routes.KonboardingView,
      builder: (context, state) => OnboardingView(),
    ),
    GoRoute(
      path: Routes.kSplashView,
      builder: (context, state) => SplashView(),
    ),
  ];

  static GoRouter approutrs = GoRouter(
    initialLocation: Routes.kSplashView,
    routes: route,
  );
}
