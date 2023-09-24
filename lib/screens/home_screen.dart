import 'package:flutter/material.dart';
import 'package:social_media_app/screens/favourite.dart';
import 'package:social_media_app/screens/posts_screen.dart';
import 'package:social_media_app/main.dart';

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.amber,
        title: Text("My social app"),
        actions: [
          Switch(
              value: Utilities.isDark,
              onChanged: (val) {
                Utilities.isDark = !Utilities.isDark;
                //this is promelom 🙄هنا كانت
              }),
        ],
      ),
      body: PageView(
        children: [
          Home(),
          MyFavourite(),
        ],
      ),
    );
  }
}
