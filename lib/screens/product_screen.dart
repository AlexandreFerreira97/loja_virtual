import 'package:flutter/material.dart';
import 'package:loja_virtual/datas/product_data.dart';

class ProductScreen extends StatefulWidget {
  const ProductScreen(this.product {Key? key}) : super(key: key);

  final ProductData product;

  @override
  State<ProductScreen> createState() => _ProductScreenState(product);
}

class _ProductScreenState extends State<ProductScreen> {

  late final ProductData product;

  _ProductScreenState(this.product);

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}
