import 'package:flutter/material.dart';
import 'package:social_media_app/widgets/post_details.dart';

class Post extends StatefulWidget {
  const Post({super.key});

  @override
  State<Post> createState() => _PostState();
}

class _PostState extends State<Post> {
  @override
  Widget build(BuildContext context) {
    return MyPost();
  }
}
