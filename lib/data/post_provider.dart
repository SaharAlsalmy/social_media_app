import 'package:flutter/material.dart';
import 'package:social_media_app/model/post_model.dart';

class PostProvider extends ChangeNotifier {
  List<PostModel> getData() {
    return post_data
        .map(
          (e) => PostModel.fromMap(e),
        )
        .toList();
  }

  List<Map> post_data = [
    {
      "image":
          "https://images.unsplash.com/photo-1694537745992-8dacd72a98d7?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1888&q=80",
      "content": "This is the content of post 1.",
      "isFavorite": true,
      "user": {
        "name": "User 1",
        "image":
            "https://images.unsplash.com/photo-1694742971702-3887ed069538?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1935&q=80"
      }
    },
    {
      "image":
          "https://plus.unsplash.com/premium_photo-1692287214829-a36af38d7f49?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1887&q=80",
      "content": "This is the content of post 2.",
      "isFavorite": false,
      "user": {
        "name": "User 2",
        "image":
            "https://images.unsplash.com/photo-1694537745992-8dacd72a98d7?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1888&q=80"
      }
    },
    {
      "image":
          "https://images.unsplash.com/photo-1694537477045-89e5635fe13c?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=2071&q=80",
      "content": "This is the content of post 3.",
      "isFavorite": true,
      "user": {
        "name": "User 3",
        "image":
            "https://plus.unsplash.com/premium_photo-1692287214829-a36af38d7f49?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1887&q=80"
      }
    },
    {
      "image":
          "https://images.unsplash.com/photo-1693568823856-8ca78fdec030?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1887&q=80",
      "content": "This is the content of post 4.",
      "isFavorite": false,
      "user": {
        "name": "User 4",
        "image":
            "https://images.unsplash.com/photo-1694537477045-89e5635fe13c?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=2071&q=80"
      }
    },
    {
      "image":
          "https://images.unsplash.com/photo-1692346441924-62acf044ee4c?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=2070&q=80",
      "content": "This is the content of post 5.",
      "isFavorite": true,
      "user": {
        "name": "User 5",
        "image":
            "https://images.unsplash.com/photo-1694687380719-520137750440?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1935&q=80"
      }
    },
    {
      "image":
          "https://plus.unsplash.com/premium_photo-1683309569303-2dfc02db98c6?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1887&q=80",
      "content": "This is the content of post 6.",
      "isFavorite": false,
      "user": {
        "name": "User 6",
        "image":
            "https://images.unsplash.com/photo-1692346441924-62acf044ee4c?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=2070&q=80"
      }
    },
    {
      "image":
          "https://images.unsplash.com/photo-1694742971702-3887ed069538?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1935&q=80",
      "content": "This is the content of post 7.",
      "isFavorite": true,
      "user": {
        "name": "User 7",
        "image":
            "https://images.unsplash.com/photo-1694742971702-3887ed069538?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1935&q=80"
      }
    },
  ];

  toggleLike(int index) {
    getData()[index].isFavorite = !getData()[index].isFavorite;
    notifyListeners();
  }
}
