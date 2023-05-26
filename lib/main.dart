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
        bottomNavigationBarTheme: const BottomNavigationBarThemeData(
          backgroundColor: Colors.white,
          type: BottomNavigationBarType.fixed,
          selectedItemColor: Colors.red,
          unselectedItemColor: Color.fromARGB(255, 139, 139, 139),
          selectedLabelStyle: TextStyle(fontSize: 18.0),
          unselectedLabelStyle: TextStyle(fontSize: 16.00),
          selectedIconTheme: IconThemeData(size: 30),
          unselectedIconTheme: IconThemeData(size: 27),
        ),
      ),
      home: const SafeArea(child: GreetingPage()),
      debugShowCheckedModeBanner: false,
    );
  }
}
