import 'package:flutter/material.dart';

import '../screens/otherscreens/CartScreen.dart';
import '../themes/ThemeHelper.dart';
import '../themes/light_color.dart';

class BottomSheetAddProductToCartWidget extends StatelessWidget {
  const BottomSheetAddProductToCartWidget({Key? key}) : super(key: key);
  void modal(BuildContext context) => showModalBottomSheet(
      shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(
        top: Radius.circular(20),
      )),
      backgroundColor: LightColor.WhiteForbackgroundColor,
      context: context,
      builder: (context) => Padding(
            padding: const EdgeInsets.all(12.0),
            child: Wrap(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    const Text(
                      "producttitle",
                      style: TextStyle(
                          fontSize: 14.0,
                          color: Colors.black,
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      width: 12,
                    ),
                    Text(
                      "Description",
                      style: TextStyle(
                          color: LightColor.turquoiseColor.withOpacity(0.9)),
                    ),
                    const SizedBox(
                      width: 12,
                    ),
                    IconButton(
                      icon: const Icon(Icons.close),
                      color: LightColor.turquoiseColor,
                      onPressed: () => Navigator.pop(context),
                    )
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 20.0,
                  ),
                  child: Container(
                    alignment: Alignment.center,
                    height: 1.0,
                    width: 350.0,
                    color: LightColor.grayColor.withOpacity(0.6),
                    margin: const EdgeInsets.fromLTRB(0, 15.0, 0, 20.0),
                  ),
                ),
                Container(
                  padding: const EdgeInsets.fromLTRB(25.0, 5.0, 25.0, 25.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        "Quantité : ",
                        style: TextStyle(
                            fontSize: 18,
                            color: LightColor.blackColor,
                            fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        width: 10.0,
                      ),
                      Icon(Icons.remove_circle_outline),
                      SizedBox(
                        width: 15.0,
                      ),
                      Text(
                        "1",
                        style: TextStyle(
                            fontSize: 18.0,
                            color: Colors.black,
                            fontWeight: FontWeight.bold),
                      ),
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
                  padding: EdgeInsets.fromLTRB(0, 0, 0, 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      OutlinedButton(
                        child: Text(
                          "Choisir et payer",
                          style: TextStyle(
                              fontSize: 14.0,
                              color: Colors.black,
                              fontWeight: FontWeight.bold),
                        ),
                        onPressed: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (c) => CartScreen()));
                        },
                        style: ElevatedButton.styleFrom(
                          side: BorderSide(
                              width: 3.0, color: LightColor.turquoiseColor),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(32.0),
                          ),
                          padding: EdgeInsets.fromLTRB(30, 20, 30, 20),
                        ),
                      ),
                      SizedBox(
                        width: 15,
                      ),
                      ElevatedButton(
                        style: ThemeHelper().buttonStyle(),
                        child: const Padding(
                          padding: EdgeInsets.fromLTRB(10, 20, 10, 20),
                          child: Text(
                            "Ajouter au Panier",
                            style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                            ),
                          ),
                        ),
                        onPressed: () {},
                      ),
                    ],
                  ),
                )
              ],
            ),
          ));
  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: Icon(
        Icons.add,
        color: LightColor.turquoiseColor,
        size: 34,
      ),
      onPressed: () => modal(
        context,
      ),
    );
  }
}
// class BottomSheetAddProductToCartWidget extends StatefulWidget {
//   // final Function addCart;
//   // final Function addNumberProductInCart;
//   // final Function changeState;
//   const BottomSheetAddProductToCartWidget({Key? key}) : super(key: key);

//   @override
//   State<BottomSheetAddProductToCartWidget> createState() =>
//       _BottomSheetAddProductToCartWidgetState();
// }

// class _BottomSheetAddProductToCartWidgetState
//     extends State<BottomSheetAddProductToCartWidget> {
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       padding: EdgeInsets.all(16),
//       child: Column(
//         mainAxisSize: MainAxisSize.min,
//         crossAxisAlignment: CrossAxisAlignment.stretch,
//         children: [
//           Row(
//             crossAxisAlignment: CrossAxisAlignment.center,
//             children: <Widget>[
//               Text("producttitle"),
//               SizedBox(
//                 width: 12,
//               ),
//               Text("Description"),
//               SizedBox(
//                 width: 12,
//               ),
//               IconButton(
//                 icon: Icon(Icons.close),
//                 onPressed: () {
//                   showBottomSheetAddCartProductVar = false;
//                 },
//               )
//             ],
//           ),
//           Padding(
//             padding: EdgeInsets.symmetric(
//               horizontal: 1.0,
//             ),
//             child: Container(
//               alignment: Alignment.center,
//               height: 1.0,
//               width: 250.0,
//               color: LightColor.grayColor.withOpacity(0.4),
//               margin: EdgeInsets.fromLTRB(25.0, 25.0, 25.0, 15.0),
//             ),
//           ),
//           Container(
//             padding: EdgeInsets.fromLTRB(25.0, 15.0, 25.0, 5.0),
//             child: Row(
//               mainAxisAlignment: MainAxisAlignment.start,
//               children: [
//                 Text(
//                   "Quantité : ",
//                   style: TextStyle(
//                       fontSize: 16,
//                       color: LightColor.blackColor,
//                       fontWeight: FontWeight.bold),
//                 ),
//                 SizedBox(
//                   width: 10.0,
//                 ),
//                 Icon(Icons.remove_circle_outline),
//                 SizedBox(
//                   width: 10.0,
//                 ),
//                 Text("1"),
//                 SizedBox(
//                   width: 10.0,
//                 ),
//                 Icon(
//                   Icons.add_circle_outline,
//                 ),
//               ],
//             ),
//           ),
//           Container(
//             padding: EdgeInsets.fromLTRB(5.0, 15.0, 25.0, 5.0),
//             child: Row(
//               mainAxisAlignment: MainAxisAlignment.center,
//               children: [
//                 OutlinedButton(
//                   child: Text(
//                     "Choisir et payer",
//                     style: TextStyle(
//                         fontSize: 12.0,
//                         color: Colors.black,
//                         fontWeight: FontWeight.bold),
//                   ),
//                   onPressed: () {
//                     Navigator.push(context,
//                         MaterialPageRoute(builder: (c) => SignUpScreen()));
//                   },
//                   style: ElevatedButton.styleFrom(
//                     side: BorderSide(
//                         width: 3.0, color: LightColor.turquoiseColor),
//                     shape: RoundedRectangleBorder(
//                       borderRadius: BorderRadius.circular(32.0),
//                     ),
//                     padding: EdgeInsets.fromLTRB(25, 15, 25, 15),
//                   ),
//                 ),
//                 SizedBox(
//                   width: 15,
//                 ),
//                 ElevatedButton(
//                   style: ThemeHelper().buttonStyle(),
//                   child: const Padding(
//                     padding: EdgeInsets.fromLTRB(10, 15, 10, 15),
//                     child: Text(
//                       "Ajouter au Panier",
//                       style: TextStyle(
//                         fontSize: 12,
//                         fontWeight: FontWeight.bold,
//                         color: Colors.white,
//                       ),
//                     ),
//                   ),
//                   onPressed: () {},
//                 ),
//               ],
//             ),
//           )
//         ],
//       ),
//     );
//   }
// }
