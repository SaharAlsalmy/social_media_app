import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:social_media_app/data/post_provider.dart';
import 'package:social_media_app/screens/home_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Provider<PostProvider>(
      create: (context) => PostProvider(),
      child: MaterialApp(
        theme: Utilities.isDark ? ThemeData.dark() : ThemeData.light(),
        debugShowCheckedModeBanner: false,
        home: HomePage(),
      ),
    );
  }
}

class Utilities {
  static bool isDark = false;
}
