import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    final pageController = PageController();

    return PageView(
      controller: pageController,
      physics: const NeverScrollableScrollPhysics(),
      children: [
      ],
    );
  }
}

