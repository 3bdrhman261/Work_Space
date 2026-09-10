import 'package:go_router/go_router.dart';
import 'package:workspace_app/Features/Login_Screens/login_Screen.dart';
import 'package:workspace_app/Features/SignUp/signUp_Screens.dart';
import 'package:workspace_app/Features/Splash/Splash_view.dart';
import 'package:workspace_app/Features/creare_accont/create_accont.dart';
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
    GoRoute(
      path: Routes.KCreateAccont,
      builder: (context, state) => CreateAccont(),
    ),
    GoRoute(
      path: Routes.KLoginScreen,
      builder: (context, state) => LoginScreen(),
    ),
    GoRoute(
      path: Routes.KSignupScreens,
      builder: (context, state) => SignupScreens(),
    ),
  ];

  static GoRouter approutrs = GoRouter(
    initialLocation: Routes.kSplashView,
    routes: route,
  );
}
