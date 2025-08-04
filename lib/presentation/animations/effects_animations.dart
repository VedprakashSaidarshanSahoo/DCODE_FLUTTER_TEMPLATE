import 'package:flutter/material.dart';

class AnimationEffects {
  /// Scale Up Animation
  static Widget scaleUp({
    required Widget child,
    required Animation<double> animation,
  }) {
    return ScaleTransition(scale: animation, child: child);
  }

  /// Scale Down Animation
  static Widget scaleDown({
    required Widget child,
    required Animation<double> animation,
  }) {
    return ScaleTransition(
      scale: Tween<double>(begin: 1.2, end: 1.0).animate(animation),
      child: child,
    );
  }

  /// Slide In from Bottom
  static Widget slideInFromBottom({
    required Widget child,
    required Animation<double> animation,
  }) {
    return SlideTransition(
      position: Tween<Offset>(
        begin: const Offset(0.0, 1.0),
        end: Offset.zero,
      ).animate(animation),
      child: child,
    );
  }

  /// Move Widget using Transform
  static Widget moveTransform({
    required Widget child,
    required double offsetX,
    required double offsetY,
    required Animation<double> animation,
  }) {
    return AnimatedBuilder(
      animation: animation,
      builder: (context, _) {
        return Transform.translate(
          offset: Offset(
            offsetX * (1 - animation.value),
            offsetY * (1 - animation.value),
          ),
          child: child,
        );
      },
    );
  }
}
