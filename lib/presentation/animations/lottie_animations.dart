import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class LottieHandler extends StatelessWidget {
  final String assetPath;
  final bool repeat;
  final bool reverse;
  final bool animate;
  final double? width;
  final double? height;
  final BoxFit fit;
  final Alignment alignment;

  const LottieHandler({
    super.key,
    required this.assetPath,
    this.repeat = true,
    this.reverse = false,
    this.animate = true,
    this.width,
    this.height,
    this.fit = BoxFit.contain,
    this.alignment = Alignment.center,
  });

  @override
  Widget build(BuildContext context) {
    return Lottie.asset(
      assetPath,
      repeat: repeat,
      reverse: reverse,
      animate: animate,
      width: width,
      height: height,
      fit: fit,
      alignment: alignment,
    );
  }
}
