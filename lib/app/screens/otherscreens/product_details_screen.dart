import 'package:flutter/material.dart';
import 'package:soraeir/app/screens/navscreens/home_screen.dart';
import 'package:soraeir/app/screens/navscreens/main_screen.dart';
import 'package:soraeir/app/themes/light_color.dart';
import 'package:soraeir/models/category_model.dart';

class ProductDetailsScreen extends StatelessWidget {
  final CategoryModel categoryModel;

  ProductDetailsScreen({required this.categoryModel});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          tooltip: 'Back Icon',
          icon: const Icon(
            Icons.arrow_back,
            color: LightColor.blackColor,
            size: 28,
          ),
          onPressed: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (c) => MainScreen()));
          },
        ),
        backgroundColor: LightColor.WhiteForbackgroundColor,
        title: Center(
          child: Text(
            categoryModel.categoryname!,
            textAlign: TextAlign.center,
            style: TextStyle(color: LightColor.blackColor),
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.network(categoryModel.picturelink!),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                categoryModel.categoryname!,
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 17.0, fontStyle: FontStyle.italic),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                categoryModel.description!,
                textAlign: TextAlign.justify,
                style: TextStyle(
                  fontSize: 22.0,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
