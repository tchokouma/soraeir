import 'package:flutter/material.dart';
import 'package:soraeir/model/category_model.dart';

class ProductSearchByCategoryScreen extends StatefulWidget {
  const ProductSearchByCategoryScreen({Key? key, CategoryModel? categoryModel})
      : super(key: key);

  @override
  State<ProductSearchByCategoryScreen> createState() =>
      _ProductSearchByCategoryScreenState();
}

class _ProductSearchByCategoryScreenState
    extends State<ProductSearchByCategoryScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
          appBar: AppBar(),
          body: SafeArea(
            child: Container(
              height: 120,
              color: Colors.blueAccent,
              child: Text("data"),
            ),
          )),
    );
  }
}
