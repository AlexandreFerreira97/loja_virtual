import 'package:flutter/material.dart';
import '../tabs/home_tab.dart';
import '../widgets/custromDrawer.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    final pageController = PageController();

    return PageView(
      controller: pageController,
      physics: const NeverScrollableScrollPhysics(),
       children: const [
         Scaffold(
          body: HomeTab(),
           drawer: CustomDrawer(),
        )
      ],
    );
  }
}

