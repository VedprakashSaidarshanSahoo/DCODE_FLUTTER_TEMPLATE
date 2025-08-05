import 'package:flutter/material.dart';
import 'package:{{project_name}}/data/repositories/animation_repo/animation_repo.dart';
import 'package:{{project_name}}/presentation/animations/lottie_animations.dart';
import 'package:{{project_name}}/presentation/widgets/animated_text_loading.dart';

class LoadingScreen extends StatefulWidget {
  final Duration duration;
  final VoidCallback onLoaded;

  const LoadingScreen({
    super.key,
    required this.duration,
    required this.onLoaded,
  });

  @override
  State<LoadingScreen> createState() => _LoadingScreenState();
}

class _LoadingScreenState extends State<LoadingScreen> {
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
            LottieHandler(assetPath: AnimationRepo.m_sandy_loading_animation),
            const SizedBox(height: 16),
            const AnimatedTextLoader(),
          ],
        ),
      ),
    );
  }
}
