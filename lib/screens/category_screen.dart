import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

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
          builder: (context,snasphot){
            if(!snasphot.hasData){
             return const Center(child: CircularProgressIndicator(),);
            }else{
              return const TabBarView(
              physics: NeverScrollableScrollPhysics(),
              children: [],
              );
            }
          },
        ),
      ),
    );
  }
}
