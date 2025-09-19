import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:portfolio_miguel_belotto/src/feature/about_me/presentations/screens/about_me_page.dart';
import 'package:portfolio_miguel_belotto/src/feature/home_screen/presentations/screens/home.dart';
import 'package:portfolio_miguel_belotto/src/feature/portfolio_page/presentations/screens/init_page.dart';

final GoRouter router = GoRouter(
  initialLocation: '/',
  navigatorKey: GlobalKey<NavigatorState>(),
  routes: [
    StatefulShellRoute.indexedStack(
      branches: [
        StatefulShellBranch(
          routes: [
            GoRoute(
              path: '/',
              builder: (context, state) => const InitPage(),
            ),
          ],
        ),
        StatefulShellBranch(
          routes: [
            GoRoute(
              path: '/about',
              builder: (context, state) => const AboutMePage(),
            ),
          ],
        ),
      ],
      pageBuilder: (context, state, shell) => MaterialPage(
        key: state.pageKey,
        child: Home(
          navigationShell: shell,
        ),
      ),
    ),
  ],
);
