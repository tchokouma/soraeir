import 'package:flutter/material.dart';

import '../../../model/product_model.dart';
import '../../data/product_screen_data.dart';
import '../../widgets/SingleProductWidget.dart';

class AllProductTabBar extends StatelessWidget {
  const AllProductTabBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      crossAxisCount: 2,
      childAspectRatio: .76,
      padding: const EdgeInsets.all(10),
      mainAxisSpacing: 10.0,
      crossAxisSpacing: 10,
      children: ProductData.map((ProductModel product) {
        return SingleProductWidget(
          product: product,
        );
      }).toList(),
    );
  }
}
