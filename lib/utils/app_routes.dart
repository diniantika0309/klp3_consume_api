import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:klp3_consume_api/pages/home_page.dart';

class AppRoutes {
  static const home = "home";

  static Page _homePageBuilder(BuildContext, GoRouterState state) {
    return const MaterialPage(
      child: HomePage(),
    );
  }

  static GoRouter goRouter = GoRouter(
    initialLocation: "/home",
    routes: [
      GoRoute(
        name: home,
        path: "/home",
        pageBuilder: _homePageBuilder,
      ),
    ],
  );
}
