import 'package:flutter/material.dart';

import '../tiles/drawerTile.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({Key? key}) : super(key: key);

  final PageController pageController;

  CustomDrawer(this.pageController);

  @override
  Widget build(BuildContext context) {

    Widget _buildDrawerBack() => Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
            colors:[
              Color.fromARGB(255, 203, 236, 241),
              Colors.white,
            ],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter
        ),
      ),
    );

    return Drawer(
      child: Stack(
        children: [
          _buildDrawerBack(),
          ListView(
            padding: const EdgeInsets.only(left: 32.0, top: 16.0),
            children: [
              Container(
                margin: const EdgeInsets.only(bottom: 8.0),
                padding: const EdgeInsets.fromLTRB(0.0, 16.0, 16.0, 0.0),
                height: 170.0,
                child: Stack(
                  children: [
                    const Positioned(top: 8.0,left: 0.0,
                      child: Text('Flutters\nClothing',style: TextStyle(fontSize: 34.0,fontWeight: FontWeight.bold),),
                    ),
                    Positioned(left:0.0,bottom: 0.0 ,
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text('Olá,',style: TextStyle(fontSize: 18.0,fontWeight: FontWeight.bold),
                          ),
                          GestureDetector(
                            child: Text('Entre ou cadastre-se >',style: TextStyle(
                                color: Theme.of(context).primaryColor,
                                fontWeight: FontWeight.bold,
                                fontSize: 16.0
                            ),),
                            onTap: (){},
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              const Divider(),
              DrawerTile(Icons.home, 'Inicio',pageController,0),
              DrawerTile(Icons.list, 'Produtos',pageController,1),
              DrawerTile(Icons.location_on, 'Lojas',pageController,2),
              DrawerTile(Icons.playlist_add_check, 'Meus pedidos',pageController,3),
            ],
          )
        ],
      ),
    );
  }
}
