import 'package:flutter/material.dart';
import '../../rtsp_app.dart';

class Routes {
  static const String entryPoint = '/';

  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case entryPoint:
        return MaterialPageRoute<dynamic>(
          builder: (_) => const RtspApp(),
        );
      default:
        return MaterialPageRoute<dynamic>(
          builder: (_) => Scaffold(
            body: Center(
              child: Text(
                'No route defined for ${settings.name}',
              ),
            ),
          ),
        );
    }
  }
}
