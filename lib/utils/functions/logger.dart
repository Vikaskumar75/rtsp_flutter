import 'package:logger/logger.dart';

class Log {
  static void print(dynamic text) => Logger(printer: CustomPrinter()).d(text);
  static void error(dynamic text) => Logger(printer: CustomPrinter()).e(text);
  static void warning(dynamic text) => Logger(printer: CustomPrinter()).w(text);
  static void info(dynamic text) => Logger(printer: CustomPrinter()).i(text);
  static void wtf(dynamic text) => Logger(printer: CustomPrinter()).wtf(text);
}

class CustomPrinter extends LogPrinter {
  @override
  List<String> log(LogEvent event) {
    final AnsiColor? color = PrettyPrinter.levelColors[event.level];
    final String? emoji = PrettyPrinter.levelEmojis[event.level];
    final dynamic message = event.message;
    return <String>[color!('$emoji: $message')];
  }
}
