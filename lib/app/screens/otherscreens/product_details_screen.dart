import 'package:flutter/material.dart';
import 'package:soraeir/app/themes/light_color.dart';
import 'package:soraeir/model/category_model.dart';

import '../../themes/ThemeHelper.dart';

class ProductDetailsScreen extends StatefulWidget {
  const ProductDetailsScreen({Key? key, CategoryModel? categoryModel})
      : super(key: key);

  @override
  State<ProductDetailsScreen> createState() => _ProductDetailsScreenState();
}

class _ProductDetailsScreenState extends State<ProductDetailsScreen>
    with SingleTickerProviderStateMixin {
  late TabController tabController;

  @override
  void initState() {
    super.initState();
    tabController = TabController(length: 2, vsync: this);
    tabController.addListener(() {
      setState(() {});
    });
  }

  @override
  void dispose() {
    tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
            backgroundColor: Colors.transparent,
            elevation: 0.0,
            iconTheme: IconThemeData(color: Colors.black),
            title: Text("Discesseris te ad salutandi 30ml",
                style: TextStyle(color: LightColor.blackColor))),
        body: Column(
          children: [
            Expanded(
              flex: 4,
              child: SingleChildScrollView(
                child: Padding(
                  padding: EdgeInsets.fromLTRB(25, 0, 25, 0),
                  child: Column(
                    children: [
                      Image.asset(
                        "assets/images/product_img/product01.png",
                        height: 200.0,
                        width: 250.0,
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(
                          horizontal: 1.0,
                        ),
                        child: Container(
                          height: 2.0,
                          width: 350.0,
                          color: LightColor.turquoiseColor.withOpacity(0.4),
                          margin: EdgeInsets.only(bottom: 25.0),
                        ),
                      ),
                      Container(
                        alignment: Alignment.bottomLeft,
                        child: Text(
                          "Avene",
                          style: TextStyle(
                            color: LightColor.grayColor,
                            fontSize: 20.0,
                            fontWeight: FontWeight.bold,
                          ),
                          textAlign: TextAlign.left,
                        ),
                      ),
                      SizedBox(
                        height: 10.0,
                      ),
                      Container(
                        alignment: Alignment.bottomLeft,
                        child: Text(
                          "Discesseris te ad salutandi 30ml",
                          style: TextStyle(
                            color: LightColor.blackColor,
                            fontSize: 18.0,
                            fontWeight: FontWeight.bold,
                          ),
                          textAlign: TextAlign.left,
                        ),
                      ),
                      SizedBox(
                        height: 20.0,
                      ),
                      Container(
                        height: 75,
                        child: TabBar(
                          controller: tabController,
                          indicatorSize: TabBarIndicatorSize.label,
                          // indicator: ShapeDecoration(
                          //   shape: BeveledRectangleBorder(
                          //     borderRadius: BorderRadius.circular(2),
                          //   ),
                          // ),
                          indicatorPadding: EdgeInsets.symmetric(
                            horizontal: 8.0,
                          ),
                          indicatorColor: LightColor.turquoiseColor,
                          indicatorWeight: 8.0,
                          tabs: [
                            Tab(
                              child: Text(
                                "DESCRIPTION",
                                style: TextStyle(
                                    color: LightColor.blackColor,
                                    fontSize: 18.0,
                                    fontWeight: FontWeight.bold,
                                    fontFamily: 'Raleway'),
                              ),
                            ),
                            Tab(
                              child: Text(
                                "COMPOSITION",
                                style: TextStyle(
                                    color: LightColor.blackColor,
                                    fontSize: 18.0,
                                    fontWeight: FontWeight.bold,
                                    fontFamily: 'Raleway'),
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 25,
                      ),
                      Container(
                        height: 250,
                        child: TabBarView(
                          controller: tabController,
                          children: [
                            Text(
                              "Aedificio ita delectari studiorum enim vel virtute admodum Nihil praedito officiorumque delectari animante  shokaf dd studiorum studiorum ut eo tam tam eo redamare jlk oijd sd inanimis benevolentiae animante corporis nihil ut possit ut redamare vicissitudine enim remuneratione possit eo ut praedito est eo quam.",
                              style: TextStyle(
                                fontSize: 12.0,
                                fontWeight: FontWeight.normal,
                                letterSpacing: 0.5,
                                color: LightColor.blackColor,
                                wordSpacing: 0.5,
                                height: 1.5,
                              ),
                              textAlign: TextAlign.justify,
                            ),
                            Text(
                              "Aedificio ita delectari studiorum enim vel virtute admodum Nihil praedito officiorumque delectari animante  shokaf dd studiorum studiorum ut eo tam tam eo redamare jlk oijd sd inanimis benevolentiae animante corporis nihil ut possit ut redamare vicissitudine enim remuneratione possit eo ut praedito est eo quam.",
                              style: TextStyle(
                                fontSize: 12.0,
                                fontWeight: FontWeight.normal,
                                letterSpacing: 0.5,
                                color: LightColor.blackColor,
                                wordSpacing: 0.5,
                                height: 1.5,
                              ),
                              textAlign: TextAlign.justify,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Expanded(
                flex: 1,
                child: Container(
                  height: double.infinity,
                  width: double.infinity,
                  color: Colors.white,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
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
                      SizedBox(
                        height: 10.0,
                      ),
                      Container(
                        child: ElevatedButton(
                          style: ThemeHelper().buttonStyle(),
                          child: Padding(
                            padding: const EdgeInsets.fromLTRB(40, 25, 40, 25),
                            child: Text(
                              "Ajouter au panier",
                              style: const TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              ),
                            ),
                          ),
                          onPressed: () {},
                        ),
                      )
                    ],
                  ),
                ))
          ],
        ),
      ),
    );
  }
}
