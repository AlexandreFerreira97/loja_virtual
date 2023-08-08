import 'package:flutter/material.dart';
import 'package:loja_virtual/datas/product_data.dart';

class ProductTile extends StatelessWidget {
  const ProductTile(this.type, this.data {Key? key}) : super(key: key);

  final String type;
  final ProductData data;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: Card(
        child: type == 'grid' ?
          Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              AspectRatio(aspectRatio: 0.8,
              child: Image.network(
                  product.images[0],
                  fit: BoxFit.cover,
                ),
              ),
              Expanded(child: Container(
                padding: const EdgeInsets.all(0.8),
                child: Column(
                    children: [Text(product.title,style: const TextStyle(fontWeight: FontWeight.w500),),
                    Text('R\$ ${product.price.toStringAsFixed(2)}',
                      style: TextStyle(color: Theme.of(context).primaryColor,fontSize: 17.0,fontWeight: FontWeight.bold),)],
                 ),
                ),
              ),
            ],
          )
        : Row(
          children: [
            Flexible(flex: 1,
              child:Image.network(product.images[0],
                  fit: BoxFit.cover,
                  height: 250.0,
                ) ,
              ),
            Flexible(flex: 1,
            child: Container(
              padding: const EdgeInsets.all(0.8),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [Text(product.title,style: const TextStyle(fontWeight: FontWeight.w500),),
                  Text('R\$ ${product.price.toStringAsFixed(2)}',
                        style: TextStyle(color: Theme.of(context).primaryColor,fontSize: 17.0,fontWeight: FontWeight.bold),)],
              ),
            ),),
          ],
        ),
      ),
    );
  }
}
