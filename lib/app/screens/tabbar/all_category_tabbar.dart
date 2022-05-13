import 'package:flutter/material.dart';
import 'package:soraeir/app/screens/otherscreens/product_details_screen.dart';

import '../../../models/category_model.dart';
import '../../data/category_screen_data.dart';

class AllCategoryTabBar extends StatelessWidget {
  const AllCategoryTabBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
          itemCount: CategoryData.length,
          itemBuilder: (context, index) {
            CategoryModel categoryModel = CategoryData[index];
            return Card(
              child: ListTile(
                contentPadding: EdgeInsets.fromLTRB(6, 12, 6, 12),
                title: Text(categoryModel.categoryname!),
                //subtitle: Text(categoryModel.price.toString()),
                leading: Image.network(
                  categoryModel.picturelink!,
                  cacheHeight: 82,
                  cacheWidth: 82,
                ),
                trailing: const Icon(Icons.navigate_next),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) =>
                          ProductDetailsScreen(categoryModel: categoryModel),
                    ),
                  );
                },
              ),
            );
          }),
    );
  }
}
