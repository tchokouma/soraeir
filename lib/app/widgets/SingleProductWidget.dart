import 'package:flutter/material.dart';
import 'package:soraeir/app/screens/otherscreens/product_details_screen.dart';

import '../../model/product_model.dart';
import 'CustomText.dart';

class SingleProductWidget extends StatelessWidget {
  final ProductModel product;

  const SingleProductWidget({Key? key, required this.product})
      : super(key: key);
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
              Navigator.push(context,
                  MaterialPageRoute(builder: (c) => ProductDetailsScreen()));
            },
            child: Padding(
              padding: const EdgeInsets.all(2.0),
              child: ClipRRect(
                  borderRadius: BorderRadius.only(
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
          SizedBox(
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
              IconButton(
                  icon: Icon(
                    Icons.add,
                    size: 34,
                  ),
                  onPressed: () {})
            ],
          ),
        ],
      ),
    );
  }
}
