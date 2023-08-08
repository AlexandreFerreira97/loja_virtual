import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:loja_virtual/datas/product_data.dart';

import '../tiles/product_tile.dart';

class CategoryScreen extends StatelessWidget {
  const CategoryScreen(this.documentSnapshot {Key? key}) : super(key: key);

  final DocumentSnapshot documentSnapshot;

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: Text(snapshot.data['title'],),
          centerTitle: true,
          bottom: const TabBar(
            indicatorColor: Colors.white,
            tabs: [
              Tab(icon: Icon(Icons.grid_on),),
              Tab(icon: Icon(Icons.list),)
            ],
          ),
        ),
        body: FutureBuilder<QuerySnapshot>(
          future: Firestore.instance.collection('products').documents(snapshot.documentID).collection('itens').getDocuments(),
          builder: (context,snasphot){
            if(!snasphot.hasData){
             return const Center(child: CircularProgressIndicator(),);
            }else{
              return TabBarView(
              physics: NeverScrollableScrollPhysics(),
              children: [
                  GridView.builder(
                  padding: const EdgeInsets.all(4.0),
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount:2,
                      mainAxisSpacing: 4.0,
                      crossAxisSpacing: 4.0,
                      childAspectRatio: 0.65,
                    ),
                    itemCount: snasphot.data.documents.length,
                    itemBuilder: (context, snasphot){
                      return ProductTile('grid', ProductData.fromDocuments(snapshot.data.documents[index]));
                    },
                  ),
                  ListView.builder(
                    padding: const EdgeInsets.all(4.0),
                    itemCount: snasphot.data.documents.length,
                     itemBuilder: (context, snasphot){
                        return ProductTile('list', ProductData.fromDocuments(snapshot.data.documents[index]));
                    },
                  ),
                ],
              );
            }
          },
        ),
      ),
    );
  }
}
