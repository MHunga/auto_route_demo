import 'package:auto_route/auto_route.dart';
import 'package:auto_route_demo/page/home/home_page.dart';
import 'package:auto_route_demo/page/post/post_details.dart';
import 'package:auto_route_demo/page/user/user_page.dart';
import 'package:auto_route_demo/page/user/user_post_page.dart';
import 'package:auto_route_demo/page/user/user_profile_page.dart';

@MaterialAutoRouter(
  replaceInRouteName: 'Page|Screen,Route',
  routes: <AutoRoute>[
    AutoRoute(page: HomePage, initial: true),
    AutoRoute(page: UserPage, path: "/user", children: [
      AutoRoute(page: UserProfilePage, initial: true),
      AutoRoute(page: UserPostPage, path: "post")
    ]),
    AutoRoute(page: PostDetailPage, path: "/post-details/:id")
  ],
)
class $AppRouter {}
