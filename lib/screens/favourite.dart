import 'package:flutter/material.dart';
import 'package:social_media_app/data/post_data.dart';
import 'package:social_media_app/widgets/post.dart';

class MyFavourite extends StatefulWidget {
  // const MyFavourite({super.key});
  MyFavourite();

  @override
  State<MyFavourite> createState() => _MyFavouriteState();
}

class _MyFavouriteState extends State<MyFavourite> {
  updatePage() {
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount:
          listPostModel.where((element) => element.isFavorite == true).length,
      itemBuilder: (context, index) => PostWidget(
          listPostModel
              .where((element) => element.isFavorite == true)
              .toList()[index],
          index),
    );
  }
}
