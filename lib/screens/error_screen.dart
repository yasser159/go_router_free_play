import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../main.dart';

class ErrorScreen extends StatelessWidget {
  final Exception? error;
  const ErrorScreen({Key? key, required this.error}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final router = GoRouter.of(context);
    return Scaffold(
      appBar: AppBar(title: const Text('Error')),
      body: Center(
        child: Text(error.toString()),
      ),
    );
  }
}
