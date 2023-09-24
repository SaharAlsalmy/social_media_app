import 'package:flutter/material.dart';
import 'package:social_media_app/data/post_data.dart';
import 'package:social_media_app/widgets/post.dart';

class Home extends StatefulWidget {
  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {

  @override
  Widget build(BuildContext context) {
        return ListView.builder(
      itemCount: listPostModel.length,
      itemBuilder: (context, index) =>
          PostWidget(listPostModel[index]),
    );
  }
}
