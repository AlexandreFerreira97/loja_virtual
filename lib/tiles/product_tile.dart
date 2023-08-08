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
                child: const Column(

                 ),
                ),
              ),
            ],
          )
        : const Row(),
      ),
    );
  }
}