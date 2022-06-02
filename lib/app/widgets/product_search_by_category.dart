import 'package:flutter/material.dart';

import '../../../model/product_model.dart';
import 'SingleProductWidget.dart';

class ProductSearchByCategoryWidget extends StatelessWidget {
  Function? showBottomSheetAddProductToCart;
  List<ProductModel> list_product_by_category;
  ProductSearchByCategoryWidget({
    Key? key,
    this.showBottomSheetAddProductToCart,
    required this.list_product_by_category,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      crossAxisCount: 2,
      childAspectRatio: .76,
      padding: const EdgeInsets.all(10),
      mainAxisSpacing: 10.0,
      crossAxisSpacing: 10,
      children: list_product_by_category.map((ProductModel product) {
        return SingleProductWidget(
          product: product,
        );
      }).toList(),

      // ProductData.map((ProductModel product) {
      //   return SingleProductWidget(
      //     product: product,
      //   );
      // }).toList(),
    );
  }
}
