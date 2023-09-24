import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:social_media_app/data/post_provider.dart';
import 'package:social_media_app/model/post_model.dart';

class PostWidget extends StatefulWidget {
  PostModel post_model;
  int index;
  PostWidget(this.post_model, this.index);

  @override
  State<PostWidget> createState() => _PostWidgetState();
}

class _PostWidgetState extends State<PostWidget> {
  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.all(16.0),
      elevation: 4.0,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Image.network(
            widget.post_model.image ?? '',
          ),
          Padding(
            padding: EdgeInsets.all(16.0),
            child: Text(widget.post_model.content ?? ''),
          ),
          ListTile(
            leading: CircleAvatar(
              backgroundImage: NetworkImage(widget.post_model.image ?? ''),
            ),
            title: Text(widget.post_model.user?.name ?? ''),
            trailing: IconButton(
              icon: Icon(
                Icons.favorite,
                color: (widget.post_model.isFavorite ?? false)
                    ? Colors.red
                    : Colors.grey,
              ),
              onPressed: () {
                Provider.of<PostProvider>(context, listen: false)
                    .toggleLike(widget.index);
              },
            ),
          ),
        ],
      ),
    );
  }
}
