import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../main.dart';

class Page1Screen extends StatelessWidget {
  const Page1Screen({super.key});

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(title: const Text(MyApp.title)),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: ElevatedButton(
                  onPressed: () => context.go('/page2'),
                  child: const Text('Go to Page 2'),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: ElevatedButton(
                  onPressed: () => context.go('/page3'),
                  child: const Text('Go to Page 3'),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: ElevatedButton(
                  onPressed: () => context.go('/page4'),
                  child: const Text('Go to Page 4'),
                ),
              ),
            ],
          ),
        ),

// add bottom navigation bar buttons
        bottomNavigationBar: BottomNavigationBar(
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.business),
              label: 'Page 2',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.school),
              label: 'Page 3',
            ),
          ],
          currentIndex: 0,
          selectedItemColor: Colors.amber[800],
          onTap: (int index) {
            if (index == 0) {
              context.go('/');
            } else if (index == 1) {
              context.go('/page2');
            } else if (index == 2) {
              context.go('/page3');
            }
          },
        ),
      );
}
