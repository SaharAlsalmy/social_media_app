import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:social_media_app/model/post_model.dart';

class PostWidget extends StatefulWidget {
  PostModel post_model;
  Function? function;
  PostWidget(this.post_model, [this.function]);

  @override
  State<PostWidget> createState() => _PostWidgetState();
}

class _PostWidgetState extends State<PostWidget> {

    toggleIsLike() {
    setState(() {});
    widget.post_model.isFavorite = !(widget.post_model.isFavorite);
      widget.function!();
    
  }


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
                toggleIsLike();

              },
            ),
          ),
        ],
      ),
    );
  }
}
