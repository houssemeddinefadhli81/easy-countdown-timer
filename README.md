# Easy Countdown Timer

A customizable Flutter countdown widget with smooth animations and flexible formatting. Display time in `DD:HH:MM:SS` format with control over styles, visibility, and callbacks — perfect for limited-time offers, product launches, sales, and other time-sensitive events.

![Countdown Preview](https://raw.githubusercontent.com/houssemeddinefadhli81/easy-countdown-timer/refs/heads/main/assets/screenshot.gif)

## Features

- Countdown from any `Duration`
- Custom text styles for digits and separators
- Show or hide days, hours, minutes, and seconds
- Animated number transitions
- Callback triggered when countdown ends
- Optional custom separator widget

## Installation

Add the following line to your `pubspec.yaml` file:

```yaml
dependencies:
  easy_countdown_timer: ^0.0.4
```
Then run:
```yaml
flutter pub get
```
Usage

Import the package:
```yaml
import 'package:easy_countdown_timer/easy_countdown_timer_widget.dart';
```
Use the widget:
```yaml
EasyCountdownTimerWidget(
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
```
Parameters
```yaml
| Parameter             | Type           | Default   | Description                      |
|-----------------------|----------------|-----------|----------------------------------|
| duration              | Duration       | —         | Countdown duration               |
| digitTextStyle        | TextStyle?     | null      | Style for digit text             |
| separatorTextStyle    | TextStyle?     | null      | Style for the default separator  |
| onFinished            | VoidCallback?  | null      | Called when the countdown ends   |
| showDays              | bool           | true      | Show the day part                |
| showHours             | bool           | true      | Show the hour part               |
| showMinutes           | bool           | true      | Show the minute part             |
| showSeconds           | bool           | true      | Show the second part             |
| separatedWidget       | Widget?        | :         | Custom separator widget          |
```
Example

To try the package locally, clone the repository and run the example:
```yaml
git clone https://github.com/houssemeddinefadhli81/easy-countdown-timer.git
```
```yaml
cd easy-countdown-timer/example
flutter run
```
Screenshots

![Countdown Preview](https://raw.githubusercontent.com/houssemeddinefadhli81/easy-countdown-timer/refs/heads/main/assets/screenshot.png)

![Countdown Preview](https://raw.githubusercontent.com/houssemeddinefadhli81/easy-countdown-timer/refs/heads/main/assets/screenshot.gif)

## License

This project is licensed under the MIT License. See the LICENSE file for details.

## Contributions

Contributions are welcome. Please open issues or submit pull requests to help improve this package.

If you find this package useful, consider giving it a star on GitHub or pub.dev.