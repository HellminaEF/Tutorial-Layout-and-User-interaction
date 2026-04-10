import 'package:flutter/material.dart';
import 'tutorial_11_2.dart';

class Tutorial11Page extends StatelessWidget {
  const Tutorial11Page({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        children: [
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text('Tutorial 11-1', style: TextStyle(fontSize: 24)),
                const SizedBox(height: 20),
                GestureDetector(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: const Text(
                    'Go to Home page',
                    style: TextStyle(fontSize: 16, color: Colors.blue),
                  ),
                ),
              ],
            ),
          ),
          const Tutorial112Page(),
        ],
      ),
    );
  }
}
