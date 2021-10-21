import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:socialmediaapp/models/posts.dart';

class ListPost extends StatefulWidget {
  const ListPost({Key? key}) : super(key: key);

  @override
  _ListPostState createState() => _ListPostState();
}

class _ListPostState extends State<ListPost> {
  @override
  Widget build(BuildContext context) {
    final posts = Provider.of<List<PostModel>>(context) ?? [];
    return ListView.builder(
      itemCount: posts.length,
      itemBuilder: (context, index) {
        final post = posts[index];
        return ListTile(
          title: Text(post.creator),
          subtitle: Text(post.text),
        );
      },
    );
  }
}
