import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '../screens/error_screen.dart';
import '../screens/page1_screen.dart';
import '../screens/page2_screen.dart';
import '../screens/page3_screen.dart';
import '../screens/page4_screen.dart';

final GoRouter myRouter = GoRouter(
  errorBuilder: (context, state) => ErrorScreen(error: state.error),
  routes: <GoRoute>[
    GoRoute(
      routes: <GoRoute>[
        GoRoute(
          routes: const <GoRoute>[],
          path: 'page2',
          builder: (BuildContext context, GoRouterState state) =>
              const Page2Screen(),
        ),
        GoRoute(
          routes: const <GoRoute>[],
          path: 'page3',
          builder: (BuildContext context, GoRouterState state) =>
              const Page3Screen(),
        ),
        GoRoute(
          routes: const <GoRoute>[],
          path: 'page4',
          builder: (BuildContext context, GoRouterState state) =>
              const Page4Screen(),
        ),
      ],
      path: '/',
      builder: (BuildContext context, GoRouterState state) =>
          const Page1Screen(),
    ),
  ],
);
