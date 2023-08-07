import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class CategoryTile extends StatelessWidget {
  const CategoryTile(this.snapshot{Key? key}) : super(key: key);

  final DocumentSnapshot snapshot;

  @override
  Widget build(BuildContext context) {
    return const ListTile(
      leading: CircleAvatar(radius: 25.0,
        backgroundColor: Colors.transparent,
        backgroundImage: NetworkImage(snapshot.data['icon']),
      ),
      title: Text(snapshot.data['title']),
      trailing: Icon(Icons.keyboard_arrow_right),
      onTap: (){

      },
    );
  }
}
