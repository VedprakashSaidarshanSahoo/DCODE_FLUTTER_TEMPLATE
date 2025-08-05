import 'package:flutter/material.dart';
import 'package:my_test_bill_application/data/repositories/animation_repo/animation_repo.dart';
import 'package:my_test_bill_application/presentation/animations/lottie_animations.dart';
import 'package:my_test_bill_application/presentation/widgets/animated_text_error.dart';

class ErrorScreen extends StatefulWidget {
  final Duration duration;
  final VoidCallback onLoaded;

  const ErrorScreen({
    super.key,
    required this.duration,
    required this.onLoaded,
  });

  @override
  State<ErrorScreen> createState() => _ErrorScreenState();
}

class _ErrorScreenState extends State<ErrorScreen> {
  @override
  void initState() {
    super.initState();
    Future.delayed(widget.duration, () {
      if (mounted) {
        widget.onLoaded();
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      color: const Color.fromARGB(0, 255, 255, 255),
      child: Align(
        alignment: Alignment.center,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            LottieHandler(assetPath: AnimationRepo.m_error_404_animation),
            const SizedBox(height: 16),
            const AnimatedTextErrorLoader(),
          ],
        ),
      ),
    );
  }
}
