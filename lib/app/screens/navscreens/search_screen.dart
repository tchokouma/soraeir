import 'package:flutter/material.dart';
import 'package:soraeir/app/data/product_screen_data.dart';
import 'package:soraeir/app/screens/otherscreens/product_details_screen.dart';
import 'package:soraeir/app/themes/light_color.dart';
import 'package:soraeir/model/product_model.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({Key? key}) : super(key: key);

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  // static List<ProductModel> main_products_list = ProductData.toList();

  // creating the list that we're going to display and filter
  List<ProductModel> display_list = List.from(ProductData);
  void updateList(String value) {
    setState(() {
      display_list = ProductData.where((element) =>
              element.producttitle!.toLowerCase().contains(value.toLowerCase()))
          .toList();
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: LightColor.WhiteForbackgroundColor,
        body: Padding(
          padding: EdgeInsets.all(11),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Text(
              //   "Rechercher un produit",
              //   style: TextStyle(
              //     color: LightColor.blackColor,
              //     fontSize: 22.0,
              //     fontWeight: FontWeight.bold,
              //   ),
              // ),
              SizedBox(
                height: 40.0,
              ),
              // TextField(
              //   onChanged: (value) => updateList(value),
              //   style: TextStyle(color: Colors.white),
              //   decoration: InputDecoration(
              //     filled: true,
              //     fillColor: LightColor.grayColor.withOpacity(0.3),
              //     border: OutlineInputBorder(
              //       borderRadius: BorderRadius.circular(16.0),
              //       borderSide:
              //           BorderSide(color: LightColor.blackColor, width: 4),
              //     ),
              //     hintText: "ex: efferalgan",
              //     suffixIcon: Align(
              //       alignment: Alignment.bottomLeft,
              //       child: Padding(
              //         padding: const EdgeInsets.all(8),
              //         child: Icon(
              //           Icons.search,
              //           color: LightColor.blackColor.withOpacity(0.5),
              //           size: 32.0,
              //         ),
              //       ),
              //     ),
              //     prefixIcon: Padding(
              //       padding: EdgeInsetsDirectional.only(
              //         start: 28.0,
              //       ),
              //     ),
              //   ),
              // ),

              TextFormField(
                onChanged: (value) => updateList(value),
                style: TextStyle(color: LightColor.blackColor),
                cursorColor: LightColor.redColor,
                decoration: InputDecoration(
                  prefixIcon: Padding(
                    padding: const EdgeInsets.only(right: 18.0),
                    child: IconButton(
                      icon: Icon(
                        Icons.search,
                        color: LightColor.turquoiseColor,
                        size: 32.0,
                      ),
                      onPressed: null,
                    ),
                  ),
                  // suffixIcon: Padding(
                  //   padding: const EdgeInsets.only(right: 14.0),
                  //   child: IconButton(
                  //     icon: Icon(
                  //       Icons.abc,
                  //       color: LightColor.turquoiseColor,
                  //     ),
                  //     onPressed: null,
                  //   ),
                  // ),
                  //focusedBorder: InputBorder.none,
                  focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(15.0)),
                      borderSide: BorderSide(color: LightColor.turquoiseColor)),

                  //enabledBorder: InputBorder.none,
                  errorBorder: InputBorder.none,
                  disabledBorder: InputBorder.none,
                  //focusedErrorBorder: InputBorder.none,
                  //border: InputBorder.none,
                  hintText: "ex: jshhshshsh",
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
              ), // Sized Box
              Expanded(
                child: display_list.length == 0
                    ? Center(
                        child: Text(
                          "Aucun resultat !",
                          style: TextStyle(
                              color: LightColor.grayColor,
                              fontSize: 22.0,
                              fontWeight: FontWeight.bold),
                        ),
                      )
                    : ListView.builder(
                        itemCount: display_list.length,
                        itemBuilder: (context, index) => Card(
                          shadowColor: Colors.black,
                          margin: EdgeInsets.all(3),
                          child: ListTile(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (c) => ProductDetailsScreen()));
                            },
                            tileColor: LightColor.whiteColor,
                            contentPadding: EdgeInsets.all(15),
                            style: ListTileStyle.list,
                            minVerticalPadding: 12,
                            dense: true,
                            title: Text(
                              display_list[index].producttitle!,
                              style: TextStyle(
                                color: LightColor.turquoiseColor,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            subtitle: Text(
                              "${display_list[index].price} MAD",
                              style: TextStyle(
                                color: LightColor.blackColor,
                                fontSize: 14.0,
                              ),
                            ),
                            trailing: Text(
                              "Description",
                              style: TextStyle(
                                  color: LightColor.grayColor, fontSize: 12.0),
                            ),
                            leading: Icon(
                              Icons.add_box,
                              size: 32,
                              color: LightColor.blackColor,
                            ),
                          ),
                        ),
                      ),
              ),
            ],
          ), // Column
        ),
      ),
    );
  }
}
