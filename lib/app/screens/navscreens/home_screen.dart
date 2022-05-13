import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:soraeir/app/screens/tabbar/all_category_tabbar.dart';

import '../../themes/light_color.dart';
import '../authentication/login_screen.dart';
import '../tabbar/all_product_tabbar.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen>
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
        appBar: PreferredSize(
          preferredSize: const Size.fromHeight(125.0),
          child: AppBar(
            //title: Text("Notification Badge"),
            //centerTitle: true,
            leading: IconButton(
              tooltip: 'Back Icon',
              icon: const Icon(
                Icons.arrow_back,
                color: LightColor.blackColor,
                size: 22,
              ),
              onPressed: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (c) => LoginScreen()));
              },
            ),
            flexibleSpace: Container(
              decoration: BoxDecoration(
                color: Colors.white,
              ),
            ),
            // flexibleSpace: Container(
            //     child: Image.asset("assets/images/home01.jpeg", fit: BoxFit.fitWidth,),
            //   ),
            actions: <Widget>[
              IconButton(
                icon: Icon(
                  Icons.add_shopping_cart,
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
        ),
        body: Container(
          child: Column(
            children: [
              Container(
                height: 60,
                color: LightColor.turquoiseColor,
                child: TabBar(
                  controller: tabController,
                  tabs: const [
                    Tab(
                      child: Text(
                        "Médicaments",
                        style: TextStyle(
                            color: LightColor.whiteColor,
                            fontSize: 18,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    Tab(
                      child: Text("Pharmacie",
                          style: TextStyle(
                              color: LightColor.whiteColor,
                              fontSize: 18,
                              fontWeight: FontWeight.bold)),
                    )
                  ],
                  indicatorColor: LightColor.whiteColor,
                  indicatorWeight: 7.0,
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Expanded(
                child: TabBarView(controller: tabController, children: [
                  AllProductTabBar(),
                  AllCategoryTabBar(),
                ]),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
