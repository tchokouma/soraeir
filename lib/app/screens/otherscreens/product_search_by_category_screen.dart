import 'package:flutter/material.dart';
import 'package:soraeir/app/screens/navscreens/my_account_screen.dart';
import 'package:soraeir/app/themes/light_color.dart';
import 'package:soraeir/app/widgets/bottom_sheet_add_product_to_cart_widget.dart';
import 'package:soraeir/app/widgets/product_search_by_category.dart';
import 'package:soraeir/global/global.dart';
import 'package:soraeir/model/category_model.dart';

import '../../../model/product_model.dart';
import '../../data/product_screen_data.dart';

// ignore: must_be_immutable
class ProductSearchByCategoryScreen extends StatefulWidget {
  CategoryModel categoryModel;
  ProductSearchByCategoryScreen({Key? key, required this.categoryModel})
      : super(key: key);

  @override
  State<ProductSearchByCategoryScreen> createState() =>
      // ignore: no_logic_in_create_state
      _ProductSearchByCategoryScreenState(
        categoryModel,
      );
}

class _ProductSearchByCategoryScreenState
    extends State<ProductSearchByCategoryScreen> {
  CategoryModel categoryModel;
  _ProductSearchByCategoryScreenState(
    this.categoryModel,
  );
  // creating the list that we're going to display and filter
  // ignore: non_constant_identifier_names
  late List<ProductModel> list_product_by_category = [];

  @override
  // ignore: must_call_super
  void initState() {
    List<ProductModel> listSortByCategory(CategoryModel categoryModel) {
      return ProductData.where((element) => element.categoryid
          .toString()
          .contains(categoryModel.categoryid.toString())).toList();
    }

    list_product_by_category = listSortByCategory(categoryModel);
  }

  //List<ProductModel> list_sort_by_category = display_list.sort
  void updateList(String value) {
    setState(() {
      list_product_by_category = list_product_by_category
          .where((element) =>
              element.producttitle!.toLowerCase().contains(value.toLowerCase()))
          .toList();
    });
  }

  int currentIndex = 0;
  void onTap(int index) {
    if (index != 3) {
      setState(() {
        currentIndex = index;
      });
    } else {
      Navigator.of(context).push(
        MaterialPageRoute(builder: (context) => const MyAccountScreen()),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        //title: Text("Notification Badge"),
        centerTitle: true,
        title: Text(
          "${categoryModel.categoryname}",
          style: TextStyle(color: LightColor.blackColor),
        ),
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: BackButton(color: LightColor.blackColor),
        // leading: IconButton(
        //   tooltip: 'Back Icon',
        //   icon: Icon(
        //     Icons.arrow_back,
        //     color: LightColor.blackColor,
        //     size: 22,
        //   ),
        //   onPressed: () {
        //     Navigator.push(
        //         context, MaterialPageRoute(builder: (c) => MyAccountScreen()));
        //   },
        // ),
        // flexibleSpace: Container(
        //   decoration: BoxDecoration(
        //     color: LightColor.WhiteForbackgroundColor,
        //   ),
        // ),
        // flexibleSpace: Container(
        //     child: Image.asset("assets/images/home01.jpeg", fit: BoxFit.fitWidth,),
        //   ),
        actions: <Widget>[
          IconButton(
            icon: Icon(
              Icons.shopping_basket,
              size: 26.0,
              color: LightColor.turquoiseColor,
            ),
            tooltip: 'Notification Icon',
            onPressed: () {},
          ), //IconButton
          IconButton(
            icon: Icon(Icons.notifications_none,
                size: 26.0, color: LightColor.turquoiseColor),
            tooltip: 'Cart Icon',
            onPressed: () {},
          ),
          //IconButton
        ], //<Widget>[]
      ),
      // bottomSheet: showBottomSheetAddCartProductVar == false
      //     ? Container(
      //         height: 0,
      //       )
      //     : const BottomSheetAddProductToCartWidget(),
      body: Scaffold(
        backgroundColor: LightColor.WhiteForbackgroundColor,
        body: Padding(
          padding: EdgeInsets.all(11),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 76.0,
              ),

              TextFormField(
                onChanged: (value) => updateList(value),
                style: TextStyle(color: LightColor.blackColor),
                cursorColor: LightColor.redColor,
                decoration: InputDecoration(
                  prefixIcon: Padding(
                    padding: const EdgeInsets.only(right: 10.0),
                    child: IconButton(
                      icon: Icon(
                        Icons.search,
                        color: LightColor.turquoiseColor,
                        size: 32.0,
                      ),
                      onPressed: null,
                    ),
                  ),

                  focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(15.0)),
                      borderSide: BorderSide(color: LightColor.turquoiseColor)),

                  //enabledBorder: InputBorder.none,
                  errorBorder: InputBorder.none,
                  disabledBorder: InputBorder.none,
                  //focusedErrorBorder: InputBorder.none,
                  //border: InputBorder.none,
                  hintText: "ex: paracetamol",
                  hintStyle: TextStyle(
                      color: LightColor.blackColor.withOpacity(0.5),
                      fontSize: 12),
                  filled: true,
                  fillColor: LightColor.grayColor.withOpacity(0.1),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15.0),
                    borderSide: BorderSide(
                      color: LightColor.blackColor,
                      width: 1,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 20.0,
              ),
              Container(
                width: double.infinity,
                margin: EdgeInsets.fromLTRB(20, 0, 20, 10),
                child: list_product_by_category.length <= 1
                    ? list_product_by_category.length == 0
                        ? null
                        : Text(
                            "${list_product_by_category.length} produit ",
                            style: TextStyle(
                                color: LightColor.greenColor,
                                fontSize: 14,
                                fontWeight: FontWeight.bold),
                          )
                    : Text(
                        "${list_product_by_category.length} produits ",
                        style: TextStyle(
                            color: LightColor.greenColor,
                            fontSize: 14,
                            fontWeight: FontWeight.bold),
                      ),
              ), // Sized Box
              Expanded(
                  child: list_product_by_category.length == 0
                      ? Center(
                          child: Text(
                            "Aucun resultat !",
                            style: TextStyle(
                                color: LightColor.grayColor,
                                fontSize: 22.0,
                                fontWeight: FontWeight.bold),
                          ),
                        )
                      : ProductSearchByCategoryWidget(
                          list_product_by_category: list_product_by_category,
                        )),
            ],
          ), // Column
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
          unselectedFontSize: 12,
          selectedFontSize: 14,
          type: BottomNavigationBarType.fixed,
          backgroundColor: LightColor.whiteColor,
          onTap: onTap,
          currentIndex: currentIndex,
          selectedItemColor: LightColor.turquoiseColor,
          unselectedItemColor: LightColor.blackColor.withOpacity(0.8),
          showSelectedLabels: true,
          showUnselectedLabels: true,
          elevation: 0,
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
                icon: Icon(Icons.home_outlined, size: 36.0), label: 'Accueil'),
            BottomNavigationBarItem(
                icon: Icon(Icons.search, size: 36.0), label: 'Recherche'),
            BottomNavigationBarItem(
                icon: Icon(Icons.phone, size: 36.0), label: 'Contact'),
            BottomNavigationBarItem(
                icon: Icon(Icons.person_outline_sharp, size: 36.0),
                label: 'Mon profile'),
          ]),
    );
  }
}
