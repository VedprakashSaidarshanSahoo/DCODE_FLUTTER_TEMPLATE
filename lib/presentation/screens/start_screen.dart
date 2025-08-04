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
      body: Stack(
        children: [
          /// Background animation (blob)
          Positioned.fill(
            child: LottieHandler(
              assetPath: AnimationRepo.m_background_blob,
              fit: BoxFit.cover,
            ),
          ),

          /// Interactable bubbles
          // Positioned(
          //   top: screenHeight * 0.15,
          //   left: screenWidth * 0.2,
          //   child: GestureDetector(
          //     onTap: () {
          //       debugPrint("Bubble 1 tapped!");
          //     },
          //     child: CircleAvatar(
          //       radius: 18,
          //       backgroundColor: Colors.white.withOpacity(0.6),
          //       child: Icon(Icons.bubble_chart, color: Colors.blueAccent),
          //     ),
          //   ),
          // ),
          // Positioned(
          //   bottom: screenHeight * 0.2,
          //   right: screenWidth * 0.25,
          //   child: GestureDetector(
          //     onTap: () {
          //       debugPrint("Bubble 2 tapped!");
          //     },
          //     child: CircleAvatar(
          //       radius: 14,
          //       backgroundColor: Colors.white.withOpacity(0.5),
          //       child: Icon(
          //         Icons.bubble_chart,
          //         color: Colors.pinkAccent,
          //         size: 16,
          //       ),
          //     ),
          //   ),
          // ),

          /// Central content
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                LottieHandler(assetPath: AnimationRepo.m_welcome_animation),
                const SizedBox(height: 40),
                SizedBox(
                  height: screenHeight * 0.08,
                  width: screenWidth * 0.55,
                  child: FloatingActionButton.extended(
                    backgroundColor: Colors.deepPurpleAccent,
                    onPressed: () {
                      AppRouter.navigateWithLoadingScreen(
                        context: context,
                        duration: const Duration(seconds: 2),
                        targetRoute: AppRoutes.counter,
                      );
                    },
                    label: const Text(
                      "Get Started",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
