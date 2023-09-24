import 'package:flutter/material.dart';
import 'package:social_media_app/model/post_model.dart';

class MyPost extends StatefulWidget {
  List<String> comments = [];
  @override
  State<MyPost> createState() => _MyPostState();
}

class _MyPostState extends State<MyPost> {
  PostModel post_model = PostModel.fromMap({
    "image":
        "https://images.unsplash.com/photo-1694537745992-8dacd72a98d7?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1888&q=80",
    "content": "This is the content of post 1.",
    "isFavorite": true,
    "user": {
      "name": "User 1",
      "image":
          "https://images.unsplash.com/photo-1694742971702-3887ed069538?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1935&q=80"
    }
  });

  TextEditingController textEditingController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Image.network(
            post_model.image ?? "",
            height: 200,
            width: double.infinity,
            fit: BoxFit.cover,
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            children: [
              // Icon(Icons.favorite,color:post_model.user?.isFavorite==true?Colors.red:Colors.grey),
              IconButton(
                  onPressed: () {
                    post_model.isFavorite = !post_model.isFavorite!;
                    setState(() {});

                  },
                  icon: Icon(Icons.favorite,
                      color: post_model.isFavorite!
                          ? Colors.red
                          : Colors.grey),
                          
                          ),
                          
              IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.comment,
                  )),
              Text(post_model.comments!.length.toString()),
            ],
          ),
          ListView.builder(
            shrinkWrap: true,
              itemCount: post_model.comments!.length,
              itemBuilder: (context, index) {
                return Container(
                  margin: EdgeInsets.all(10),
                  decoration: BoxDecoration(color: Colors.blue.shade200,border: Border.all(color: Colors.blueAccent)),
                  child: Text(post_model.comments![index]),
                );
              }),

          // ...post_model.comments!.map((e) => Text(e)).toList(),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: TextField(
                controller: textEditingController,
                decoration: InputDecoration(
                  suffixIcon: IconButton(
                    icon: Icon(Icons.send),
                    onPressed: () {
                      String content = textEditingController.text;
                      textEditingController.clear();
                      post_model.comments!.add(content);
                      setState(() {});
                    },
                  ),
                  contentPadding: EdgeInsets.all(10.0),
                  enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.blue),
                  ),
                  hintText: "enter your comment ...",
                )),
          ),
        ],
      ),
    );
  }
}
