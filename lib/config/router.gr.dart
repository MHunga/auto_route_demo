// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

import 'package:auto_route/auto_route.dart' as _i1;
import 'package:flutter/material.dart' as _i2;

import '../models/post.dart' as _i8;
import '../page/home/home_page.dart' as _i3;
import '../page/post/post_details.dart' as _i5;
import '../page/user/user_page.dart' as _i4;
import '../page/user/user_post_page.dart' as _i7;
import '../page/user/user_profile_page.dart' as _i6;

class AppRouter extends _i1.RootStackRouter {
  AppRouter([_i2.GlobalKey<_i2.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i1.PageFactory> pagesMap = {
    HomeRoute.name: (routeData) => _i1.MaterialPageX<dynamic>(
        routeData: routeData,
        builder: (_) {
          return const _i3.HomePage();
        }),
    UserRoute.name: (routeData) => _i1.MaterialPageX<dynamic>(
        routeData: routeData,
        builder: (_) {
          return const _i4.UserPage();
        }),
    PostDetailRoute.name: (routeData) => _i1.MaterialPageX<dynamic>(
        routeData: routeData,
        builder: (data) {
          final args = data.argsAs<PostDetailRouteArgs>();
          return _i5.PostDetailPage(
              key: args.key, post: args.post, id: args.id);
        }),
    UserProfileRoute.name: (routeData) => _i1.MaterialPageX<dynamic>(
        routeData: routeData,
        builder: (_) {
          return const _i6.UserProfilePage();
        }),
    UserPostRoute.name: (routeData) => _i1.MaterialPageX<dynamic>(
        routeData: routeData,
        builder: (_) {
          return const _i7.UserPostPage();
        })
  };

  @override
  List<_i1.RouteConfig> get routes => [
        _i1.RouteConfig(HomeRoute.name, path: '/'),
        _i1.RouteConfig(UserRoute.name, path: '/user', children: [
          _i1.RouteConfig(UserProfileRoute.name, path: ''),
          _i1.RouteConfig(UserPostRoute.name, path: 'post')
        ]),
        _i1.RouteConfig(PostDetailRoute.name, path: '/post-details/:id')
      ];
}

class HomeRoute extends _i1.PageRouteInfo<void> {
  const HomeRoute() : super(name, path: '/');

  static const String name = 'HomeRoute';
}

class UserRoute extends _i1.PageRouteInfo<void> {
  const UserRoute({List<_i1.PageRouteInfo>? children})
      : super(name, path: '/user', initialChildren: children);

  static const String name = 'UserRoute';
}

class PostDetailRoute extends _i1.PageRouteInfo<PostDetailRouteArgs> {
  PostDetailRoute({_i2.Key? key, required _i8.Post post, required int id})
      : super(name,
            path: '/post-details/:id',
            args: PostDetailRouteArgs(key: key, post: post, id: id),
            rawPathParams: {'id': id});

  static const String name = 'PostDetailRoute';
}

class PostDetailRouteArgs {
  const PostDetailRouteArgs({this.key, required this.post, required this.id});

  final _i2.Key? key;

  final _i8.Post post;

  final int id;
}

class UserProfileRoute extends _i1.PageRouteInfo<void> {
  const UserProfileRoute() : super(name, path: '');

  static const String name = 'UserProfileRoute';
}

class UserPostRoute extends _i1.PageRouteInfo<void> {
  const UserPostRoute() : super(name, path: 'post');

  static const String name = 'UserPostRoute';
}
