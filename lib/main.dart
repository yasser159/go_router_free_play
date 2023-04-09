import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:url_strategy/url_strategy.dart';

import 'config/myRouter.dart';

void main() {
  setPathUrlStrategy();
  return runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  static const String title = 'GoRouter Routes';

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      routerDelegate: myRouter.routerDelegate,
      routeInformationParser: myRouter.routeInformationParser,
      routeInformationProvider: myRouter.routeInformationProvider,
    );
  }
}
