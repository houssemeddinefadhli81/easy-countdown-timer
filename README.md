# Countdown Timer

A customizable Flutter countdown widget with smooth animations and flexible formatting. Display time in `DD:HH:MM:SS` format with optional units and styles — perfect for offers, sales, launches, or time-sensitive events.

![countdown preview](https://raw.githubusercontent.com/houssemeddinefadhli81/easy-countdown-timer/refs/heads/main/assets/screenshot.gif)

---

## Features

- Countdown from any `Duration`
- Custom text styles for digits and separators
- Show or hide days, hours, minutes, or seconds
- Animated number transitions
- Callback when countdown finishes
- Optional custom separator widget

---

## Installation

Add this to your `pubspec.yaml`:

```yaml
dependencies:
  easy_countdown_timer: ^0.0.1

Then run:

flutter pub get


⸻

Usage

import 'package:easy_countdown_timer/easy_countdown_timer.dart';

CountdownTimerWidget(
  duration: Duration(days: 1, hours: 5, minutes: 30),
  digitTextStyle: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
  separatorTextStyle: TextStyle(fontSize: 28, color: Colors.grey),
  onFinished: () => print('Countdown Complete!'),
  showDays: true,
  showHours: true,
  showMinutes: true,
  showSeconds: true,
  separatedWidget: Text(" : ", style: TextStyle(color: Colors.blue)),
)


⸻

Parameters

Parameter	Type	Default	Description
duration	Duration	—	Countdown duration
digitTextStyle	TextStyle?	null	Style for digit text
separatorTextStyle	TextStyle?	null	Style for default : separator
onFinished	VoidCallback?	null	Called when countdown ends
showDays	bool	true	Show the day part
showHours	bool	true	Show the hour part
showMinutes	bool	true	Show the minute part
showSeconds	bool	true	Show the second part
separatedWidget	Widget?	:	Custom separator widget


⸻

Example

Check the example/ folder for a full working example.

⸻

Screenshots

![Countdown Preview](https://github.com/houssemeddinefadhli81/easy-countdown-timer/blob/main/assets/screenshot.png?raw=true)

![Countdown Preview](https://raw.githubusercontent.com/houssemeddinefadhli81/easy-countdown-timer/refs/heads/main/assets/screenshot.gif)

⸻

License

MIT © Houssem Eddine Fadhli

⸻

Contributions

Contributions, issues and feature requests are welcome!
Feel free to open a pull request or issue.

⸻

Show Some Love

If you like this package, give it a ⭐ on pub.dev and GitHub!

---