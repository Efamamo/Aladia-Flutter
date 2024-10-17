import 'package:aladia_flutter_exercise/pages/login.dart';
import 'package:aladia_flutter_exercise/provider/auth_provider.dart';
import 'package:aladia_flutter_exercise/provider/theme_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
// Your main app widget

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => ThemeProvider()),
        ChangeNotifierProvider(create: (context) => AuthProvider()),
        // Add other providers here if necessary
      ],
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: Provider.of<ThemeProvider>(context).themeData,
      title: 'Aladia Exercise',
      home: const LoginPage(),
    );
  }
}
