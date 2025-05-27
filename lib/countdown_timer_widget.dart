import 'dart:async';

import 'package:easy_countdown_timer/animated_digit_widget.dart';
import 'package:easy_countdown_timer/enums.dart';
import 'package:flutter/material.dart';

class EasyCountdownTimerWidget extends StatefulWidget {
  const EasyCountdownTimerWidget({
    required this.duration,
    super.key,
    this.digitTextStyle,
    this.separatorTextStyle,
    this.onFinished,
    this.showDays = true,
    this.showHours = true,
    this.showMinutes = true,
    this.showSeconds = true,
    this.separatedWidget,
  });
  final Duration duration;
  final TextStyle? digitTextStyle;
  final TextStyle? separatorTextStyle;
  final VoidCallback? onFinished;
  final bool showDays;
  final bool showHours;
  final bool showMinutes;
  final bool showSeconds;
  final Widget? separatedWidget;
  @override
  State<EasyCountdownTimerWidget> createState() => _EasyCountdownTimerWidgetState();
}

class _EasyCountdownTimerWidgetState extends State<EasyCountdownTimerWidget> {
  late Duration _remaining;
  late Timer _timer;

  void _startTimer() {
    _timer = Timer.periodic(const Duration(seconds: 1), (_) {
      if (_remaining.inSeconds == 0) {
        _timer.cancel();
        if (widget.onFinished != null) {
          widget.onFinished!();
        }
      } else {
        setState(() {
          _remaining = _remaining - const Duration(seconds: 1);
        });
      }
    });
  }

  @override
  void initState() {
    super.initState();
    _remaining = widget.duration;
    _startTimer();
  }

  @override
  void dispose() {
    _timer.cancel();
    super.dispose();
  }

  String _twoDigits(int n) => n.toString().padLeft(2, '0');

  @override
  Widget build(BuildContext context) {
    final days = _twoDigits(_remaining.inDays);
    final hours = _twoDigits(_remaining.inHours.remainder(24));
    final minutes = _twoDigits(_remaining.inMinutes.remainder(60));
    final seconds = _twoDigits(_remaining.inSeconds.remainder(60));

    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      spacing: 8.0,
      children: [
        if (widget.showDays) AnimatedDigitWidget(value: days, id: TimeUnit.days.name),
        if (widget.showDays)
          widget.separatedWidget ??
              Text(':', style: widget.separatorTextStyle ?? Theme.of(context).textTheme.bodyLarge),
        if (widget.showHours) AnimatedDigitWidget(value: hours, id: TimeUnit.hours.name),
        if (widget.showHours)
          widget.separatedWidget ??
              Text(':', style: widget.separatorTextStyle ?? Theme.of(context).textTheme.bodyLarge),
        if (widget.showMinutes) AnimatedDigitWidget(value: minutes, id: TimeUnit.minutes.name),
        if (widget.showMinutes)
          widget.separatedWidget ??
              Text(':', style: widget.separatorTextStyle ?? Theme.of(context).textTheme.bodyLarge),
        if (widget.showSeconds) AnimatedDigitWidget(value: seconds, id: TimeUnit.seconds.name),
      ],
    );
  }
}
