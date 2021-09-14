import 'package:auto_route/auto_route.dart';
import 'package:auto_route_demo/config/router.gr.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Home Page"),
      ),
      body: Center(
        child: ElevatedButton(
            onPressed: () {
              AutoRouter.of(context).push(const UserRoute());
            },
            child: const Text("Go to UserPage")),
      ),
    );
  }
}
