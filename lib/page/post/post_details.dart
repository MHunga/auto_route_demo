import 'package:auto_route/auto_route.dart';
import 'package:auto_route_demo/models/post.dart';
import 'package:flutter/material.dart';

class PostDetailPage extends StatelessWidget {
  const PostDetailPage(
      {Key? key, required this.post, @PathParam('id') required this.id})
      : super(key: key);
  final Post post;
  final int id;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Post Detail"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              post.tile,
              style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 16),
            Text(
              post.description,
              style: const TextStyle(
                fontSize: 16,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
