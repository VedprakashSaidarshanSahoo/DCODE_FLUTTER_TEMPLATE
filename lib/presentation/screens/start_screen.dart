import 'package:flutter/material.dart';
import 'package:my_test_bill_application/config/router/app_router.dart';
import 'package:my_test_bill_application/config/router/app_routes.dart';
import 'package:my_test_bill_application/data/repositories/animation_repo/animation_repo.dart';
import 'package:my_test_bill_application/presentation/animations/lottie_animations.dart';

class StartScreen extends StatelessWidget {
  const StartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            LottieHandler(assetPath: AnimationRepo.m_welcome_animation),
            SizedBox(height: 40),
            SizedBox(
              height: screenHeight * 0.08,
              width: screenWidth * 0.55,
              child: FloatingActionButton(
                child: Text(
                  "Get Started",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                ),
                onPressed: () {
                  AppRouter.navigateWithLoadingScreen(
                    context: context,
                    duration: const Duration(seconds: 5),
                    targetRoute: AppRoutes.counter,
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
