class PostModel {
  String? image;
  String? content;
    bool isFavorite =false;

  User? user;
  List<String>? comments;
  PostModel.fromMap(Map map) {
    image = map["image"];
    content = map["content"];
    isFavorite = map["isFavorite"] == false;
    user = User.fromMap(map["user"]);
    comments = (map["comments"] ?? []);
  }
}

class User {
  String? name;
  User.fromMap(Map map) {
    name = map["name"];
  }
}
