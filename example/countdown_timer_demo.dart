import 'package:easy_countdown_timer/countdown_timer_widget.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const EasyCountdownTimerDemoApp());
}

class EasyCountdownTimerDemoApp extends StatelessWidget {
  const EasyCountdownTimerDemoApp({super.key});

  @override
  Widget build(BuildContext context) => MaterialApp(
    title: 'Countdown Timer Demo',
    theme: ThemeData(primarySwatch: Colors.indigo),
    home: const EasyCountdownDemoTimerWidget(),
    debugShowCheckedModeBanner: false,
  );
}

class EasyCountdownDemoTimerWidget extends StatelessWidget {
  const EasyCountdownDemoTimerWidget({super.key});

  @override
  Widget build(BuildContext context) => Scaffold(
    appBar: AppBar(title: const Text('Countdown Timer Example'), centerTitle: true),
    body: Center(
      child: Container(
        padding: const EdgeInsets.all(24),
        margin: const EdgeInsets.all(10),
        decoration: BoxDecoration(
          color: Colors.indigo.shade50,
          borderRadius: BorderRadius.circular(16),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withValues(alpha: 0.05),
              blurRadius: 10,
              offset: const Offset(0, 4),
            ),
          ],
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            const Text(
              'Offer Ends In:',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
            ),
            const SizedBox(height: 20),
            EasyCountdownTimerWidget(
              duration: const Duration(days: 0, hours: 5, minutes: 30, seconds: 0),
              digitTextStyle: const TextStyle(
                fontSize: 36,
                fontWeight: FontWeight.bold,
                color: Colors.indigo,
              ),
              separatorTextStyle: const TextStyle(fontSize: 32, color: Colors.black45),
              separatedWidget: const Text(
                ' : ',
                style: TextStyle(fontSize: 32, color: Colors.black54),
              ),
              onFinished: () {
                debugPrint('Countdown finished');
              },
            ),
            const SizedBox(height: 20),
            const Text(
              'Hurry up before it ends!',
              style: TextStyle(fontSize: 16, color: Colors.black54),
            ),
          ],
        ),
      ),
    ),
  );
}
