import 'package:aladia_flutter_exercise/provider/auth_provider.dart';
import 'package:aladia_flutter_exercise/widgetbook/widgetbook.directoties.g.dart';
import 'package:widgetbook/widgetbook.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:aladia_flutter_exercise/theme/theme.dart';
import 'package:aladia_flutter_exercise/provider/theme_provider.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        MultiProvider(providers: [
          ChangeNotifierProvider(create: (context) => ThemeProvider()),
          ChangeNotifierProvider(create: (context) => AuthProvider()),
        ])
      ],
      child: const WidgetBookApp(),
    ),
  );
}

class WidgetBookApp extends StatelessWidget {
  const WidgetBookApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Widgetbook.material(
      directories: directories,
      themeMode: Provider.of<ThemeProvider>(context).themeData == lightMode
          ? ThemeMode.light
          : ThemeMode.dark,
      addons: [
        // Theme Addon
        ThemeAddon(
          themeBuilder: (context, theme, child) {
            return Scaffold(
              backgroundColor: theme.colorScheme.background,
              body: Theme(
                data: theme, // Default to light theme if null
                child: child,
              ),
            );
          },
          themes: [
            WidgetbookTheme(name: 'Light', data: lightMode),
            WidgetbookTheme(name: 'Dark', data: darkMode),
          ],
        ),
        // Device Frame Addon
        DeviceFrameAddon(
          devices: [
            Devices.ios.iPhone13,
            Devices.android.samsungGalaxyA50,
          ],
        ),
      ],
    );
  }
}
