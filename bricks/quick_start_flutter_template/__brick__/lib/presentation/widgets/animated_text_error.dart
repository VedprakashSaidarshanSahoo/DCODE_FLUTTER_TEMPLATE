import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';

class AnimatedTextErrorLoader extends StatefulWidget {
  const AnimatedTextErrorLoader({super.key});

  @override
  State<AnimatedTextErrorLoader> createState() =>
      _AnimatedTextErrorLoaderState();
}

class _AnimatedTextErrorLoaderState extends State<AnimatedTextErrorLoader> {
  final List<String> phrases = [
    "🐞 Squashing bugs...",
    "🔍 Debugging in progress...",
    "🔌 Connecting to API...",
    "🚧 Fixing errors...",
    "🔄 Re-syncing data...",
    "📡 Re-establishing server connection...",
  ];

  int index = 0;
  late Timer timer;

  @override
  void initState() {
    super.initState();
    timer = Timer.periodic(const Duration(seconds: 2), (_) {
      setState(() => index = (index + 1) % phrases.length);
    });
  }

  @override
  void dispose() {
    timer.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Text(
          phrases[index],
          style: const TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.w600,
            color: Colors.white,
            // fontFamily: 'Alumni Sans Inline One Regular',
          ),
          textAlign: TextAlign.center,
        )
        .animate(
          key: ValueKey(index), // ensures animation on each change
        )
        .fadeIn(duration: 400.ms)
        .slideY(begin: 0.3, end: 0, duration: 400.ms);
  }
}
