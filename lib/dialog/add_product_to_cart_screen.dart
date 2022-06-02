import 'package:flutter/material.dart';
import 'package:soraeir/app/themes/light_color.dart';
import 'package:soraeir/model/product_model.dart';

import '../app/screens/authentication/signup_screen.dart';
import '../app/themes/ThemeHelper.dart';

class AddProductToCartScreen extends StatelessWidget {
  ProductModel? product;
  AddProductToCartScreen({this.product});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      // change the default padding to zero
      contentPadding: EdgeInsets.zero,
      backgroundColor: LightColor.WhiteForbackgroundColor,
      title: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text("producttitle"),
          SizedBox(
            width: 12,
          ),
          Text("Description")
        ],
      ),
      actions: [
        Padding(
          padding: EdgeInsets.symmetric(
            horizontal: 1.0,
          ),
          child: Container(
            alignment: Alignment.center,
            height: 1.0,
            width: 250.0,
            color: LightColor.grayColor.withOpacity(0.4),
            margin: EdgeInsets.fromLTRB(25.0, 25.0, 25.0, 15.0),
          ),
        ),
        Container(
          padding: EdgeInsets.fromLTRB(25.0, 15.0, 25.0, 5.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                "Quantité : ",
                style: TextStyle(
                    fontSize: 16,
                    color: LightColor.blackColor,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(
                width: 10.0,
              ),
              Icon(Icons.remove_circle_outline),
              SizedBox(
                width: 10.0,
              ),
              Text("1"),
              SizedBox(
                width: 10.0,
              ),
              Icon(
                Icons.add_circle_outline,
              ),
            ],
          ),
        ),
        Container(
          padding: EdgeInsets.fromLTRB(5.0, 15.0, 25.0, 5.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              OutlinedButton(
                child: Text(
                  "Choisir et payer",
                  style: TextStyle(
                      fontSize: 12.0,
                      color: Colors.black,
                      fontWeight: FontWeight.bold),
                ),
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (c) => SignUpScreen()));
                },
                style: ElevatedButton.styleFrom(
                  side:
                      BorderSide(width: 3.0, color: LightColor.turquoiseColor),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(32.0),
                  ),
                  padding: EdgeInsets.fromLTRB(25, 15, 25, 15),
                ),
              ),
              SizedBox(
                width: 15,
              ),
              ElevatedButton(
                style: ThemeHelper().buttonStyle(),
                child: const Padding(
                  padding: EdgeInsets.fromLTRB(10, 15, 10, 15),
                  child: Text(
                    "Ajouter au Panier",
                    style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                ),
                onPressed: () {},
              ),
            ],
          ),
        )
      ],
    );
  }
}
