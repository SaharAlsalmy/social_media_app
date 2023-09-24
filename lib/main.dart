import 'package:flutter/material.dart';
import 'package:social_media_app/screens/home_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  updatePage() {
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
    theme: Utilities.isDark ? ThemeData.dark() : ThemeData.light(),
    debugShowCheckedModeBanner: false,
    home: HomePage(updatePage),
  );
  }
}
class Utilities {
  static bool isDark = false;
}

