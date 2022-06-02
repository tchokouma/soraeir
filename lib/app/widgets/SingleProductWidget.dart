import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:soraeir/app/screens/otherscreens/product_details_screen.dart';
import 'package:soraeir/global/global.dart';

import '../../model/product_model.dart';
import '../screens/authentication/signup_screen.dart';
import '../themes/ThemeHelper.dart';
import '../themes/light_color.dart';
import 'CustomText.dart';
import 'bottom_sheet_add_product_to_cart_widget.dart';

class SingleProductWidget extends StatefulWidget {
  final ProductModel product;
  const SingleProductWidget({Key? key, required this.product})
      : super(key: key);

  @override
  State<SingleProductWidget> createState() => _SingleProductWidgetState(
        product,
      );
}

class _SingleProductWidgetState extends State<SingleProductWidget> {
  ProductModel product;
  _SingleProductWidgetState(this.product);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(5),
          boxShadow: [
            BoxShadow(
                color: Colors.grey.withOpacity(.53),
                offset: Offset(3, 2),
                blurRadius: 13)
          ]),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 8.0),
                child: CustomText(
                  text: "${product.price} MAD",
                  size: 12,
                  weight: FontWeight.bold,
                ),
              ),
              SizedBox(
                width: 3,
              ),
              IconButton(
                  icon: Icon(
                    Icons.favorite,
                    color: Colors.red,
                  ),
                  onPressed: () {})
            ],
          ),
          GestureDetector(
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (c) => const ProductDetailsScreen()));
            },
            child: Padding(
              padding: const EdgeInsets.all(2.0),
              child: ClipRRect(
                  borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(15),
                    topRight: Radius.circular(15),
                  ),
                  child: Image.network(
                    product.pictureLink.toString(),
                    height: 91.0,
                    width: double.infinity,
                  )),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          CustomText(
            text: product.producttitle,
            size: 12,
            weight: FontWeight.bold,
          ),
          // CustomText(
          //   text: product.price.toString(),
          //   color: Colors.grey,
          // ),
          SizedBox(
            height: 5,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 8.0),
                child: CustomText(
                  text: "Categorie ${product.categoryid} ",
                  size: 12,
                  weight: FontWeight.w300,
                ),
              ),
              SizedBox(
                width: 3,
              ),
              BottomSheetAddProductToCartWidget(),
            ],
          ),
        ],
      ),
    );
  }
}
