import 'package:flutter/material.dart';

class AnimatedDigitWidget extends StatelessWidget {
  const AnimatedDigitWidget({
    required this.value,
    required this.id,
    super.key,
    this.digitTextStyle,
  });
  final String value;
  final TextStyle? digitTextStyle;
  final String id;

  @override
  Widget build(BuildContext context) => AnimatedSwitcher(
    duration: const Duration(milliseconds: 600),
    switchInCurve: Curves.easeInOut,
    switchOutCurve: Curves.easeInOut,
    transitionBuilder: (child, anim) => SlideTransition(
      position: Tween<Offset>(begin: const Offset(0, -0.4), end: Offset.zero).animate(anim),
      child: FadeTransition(opacity: anim, child: child),
    ),
    child: Text(
      value,
      key: ValueKey('$id$value'),
      style: digitTextStyle ?? Theme.of(context).textTheme.displayMedium,
    ),
  );
}
