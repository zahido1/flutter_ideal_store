import 'package:flutter/material.dart';
import 'package:flutter_ideal_store/pages/greeting.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: Colors.red,
        scaffoldBackgroundColor: Colors.white,
        appBarTheme: const AppBarTheme(
          color: Colors.red,
        ),
      ),
      home: const SafeArea(child: GreetingPage()),
      debugShowCheckedModeBanner: false,
    );
  }
}
