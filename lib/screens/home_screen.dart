import 'package:flutter/material.dart';
import '../tabs/home_tab.dart';
import '../tabs/products_tab.dart';
import '../widgets/custromDrawer.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  final _pageController = PageController();

  @override
  Widget build(BuildContext context) {

    final pageController = PageController();

    return PageView(
      controller: pageController,
      physics: const NeverScrollableScrollPhysics(),
       children:  [
         Scaffold(
          body: const HomeTab(),
           drawer: CustomDrawer(_pageController),
        ),
         Scaffold(
            appBar: AppBar(title: const Text('Produtos'),
              centerTitle: true,
            ),
           drawer: CustomDrawer(_pageController),
           body: ProductsTab(),
         ),
      ],
    );
  }
}

