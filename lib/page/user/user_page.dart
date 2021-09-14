import 'package:auto_route/auto_route.dart';
import 'package:auto_route_demo/config/router.gr.dart';
import 'package:flutter/material.dart';

class UserPage extends StatelessWidget {
  const UserPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final router = context.innerRouterOf<StackRouter>(UserRoute.name);
    return Scaffold(
      appBar: AppBar(
        title: const Text("User Page"),
      ),
      body: Row(
        children: [
          Expanded(
              flex: 2,
              child: Drawer(
                child: Column(
                  children: [
                    NavLink(
                        isSelected: router != null
                            ? router.current.name == UserProfileRoute.name
                            : true,
                        title: "User Profile",
                        iconData: Icons.person_rounded,
                        onTap: () {
                          router!.push(const UserProfileRoute());
                        }),
                    NavLink(
                        isSelected: router != null
                            ? router.current.name == UserPostRoute.name
                            : false,
                        title: "User Post",
                        iconData: Icons.post_add_rounded,
                        onTap: () {
                          router!.push(const UserPostRoute());
                        }),
                  ],
                ),
              )),
          const Expanded(flex: 5, child: AutoRouter())
        ],
      ),
    );
  }
}

class NavLink extends StatelessWidget {
  const NavLink(
      {Key? key,
      required this.isSelected,
      required this.title,
      required this.iconData,
      required this.onTap})
      : super(key: key);
  final bool isSelected;
  final String title;
  final IconData iconData;
  final Function() onTap;
  @override
  Widget build(BuildContext context) {
    return ListTile(
        onTap: onTap,
        title: Text(title),
        leading: Icon(iconData),
        selected: isSelected);
  }
}
