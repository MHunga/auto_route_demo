import 'package:auto_route/auto_route.dart';
import 'package:auto_route_demo/config/router.gr.dart';
import 'package:auto_route_demo/models/post.dart';
import 'package:flutter/material.dart';

class UserPostPage extends StatelessWidget {
  const UserPostPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: listPost.length,
        itemBuilder: (context, index) => ListTile(
              onTap: () {
                AutoRouter.of(context).push(PostDetailRoute(
                    post: listPost[index], id: listPost[index].id));
              },
              leading: const Icon(Icons.photo_size_select_actual),
              title: Text(
                listPost[index].tile,
              ),
              subtitle: Text(listPost[index].description),
            ));
  }
}
