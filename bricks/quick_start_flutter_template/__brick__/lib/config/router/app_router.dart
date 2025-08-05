import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:{{project_name}}/presentation/animations/page_transition_animations.dart';
import 'package:{{project_name}}/presentation/screens/counter_screen.dart';
import 'package:{{project_name}}/presentation/widgets/error_screen.dart';
import 'package:{{project_name}}/presentation/widgets/loading_screen.dart';
import 'package:{{project_name}}/presentation/screens/start_screen.dart';

import 'app_routes.dart';

class AppRouter {
  static final GoRouter router = GoRouter(
    initialLocation: AppRoutes.home,
    routes: [
      GoRoute(
        path: AppRoutes.home,
        pageBuilder: (context, state) =>
            AppPageTransitions.fade(child: const StartScreen()),
      ),
      // GoRoute(
      //   path: AppRoutes.loading,
      //   // builder: (context, state) => const LoadingScreen(),
      //   pageBuilder: (context, state) =>
      //       AppPageTransitions.scale(child: const LoadingScreen()),
      // ),
      GoRoute(
        path: AppRoutes.counter,
        pageBuilder: (context, state) =>
            AppPageTransitions.fade(child: const CounterScreen()),
      ),
    ],
    errorBuilder: (context, state) =>
        const Scaffold(body: Center(child: Text('Page Not Found'))),
  );

  static void pushNavigateToPage(String route, BuildContext context) {
    context.push(route);
  }

  static void popNavigateToPage(BuildContext context) {
    context.pop();
  }

  static void replaceNavigateToPage(String route, BuildContext context) {
    context.go(route);
  }

  static void navigateWithLoadingScreen({
    required BuildContext context,
    required Duration duration,
    required String targetRoute,
  }) {
    showDialog(
      context: context,
      barrierDismissible: false,
      builder: (_) => Dialog(
        insetPadding: EdgeInsets.zero,
        backgroundColor: Colors.transparent,
        child: SizedBox.expand(
          child: LoadingScreen(
            duration: duration,
            onLoaded: () {
              Navigator.of(
                context,
                rootNavigator: true,
              ).pop(); // Close the dialog
              replaceNavigateToPage(targetRoute, context); // Then navigate
            },
          ),
        ),
      ),
    );
  }

  static void navigateWithErrorScreen({
    required BuildContext context,
    required Duration duration,
    required String targetRoute,
  }) {
    showDialog(
      context: context,
      barrierDismissible: false,
      builder: (_) => Dialog(
        insetPadding: EdgeInsets.zero,
        backgroundColor: Colors.transparent,
        child: SizedBox.expand(
          child: ErrorScreen(
            duration: duration,
            onLoaded: () {
              Navigator.of(
                context,
                rootNavigator: true,
              ).pop(); // Close the dialog
              replaceNavigateToPage(targetRoute, context); // Then navigate
            },
          ),
        ),
      ),
    );
  }
}
