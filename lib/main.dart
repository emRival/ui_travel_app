import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:ui_slacing_travel_app/pages/splash_page.dart';

void main() => runApp(
      DevicePreview(
        enabled: true,
        devices: [Devices.ios.iPhone13ProMax],
        builder: (context) => const MainApp(), // Wrap your app
      ),
    );

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // ignore: deprecated_member_use
      useInheritedMediaQuery: true,
      locale: DevicePreview.locale(context),
      builder: DevicePreview.appBuilder,
      theme: ThemeData.light(),
      darkTheme: ThemeData.dark(),
      home: const SplashPage(),
    );
  }
}
