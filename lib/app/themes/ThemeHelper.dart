import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:soraeir/app/themes/light_color.dart';

class ThemeHelper {
  InputDecoration textInputDecorationName(
      [String lableText = "", String hintText = ""]) {
    return InputDecoration(
      labelText: lableText,
      hintText: hintText,
      hintStyle: TextStyle(color: LightColor.turquoiseColor),
      labelStyle: TextStyle(color: LightColor.blackColor),
      prefixIcon: Icon(
        Icons.person,
        color: LightColor.turquoiseColor,
      ),
      fillColor: LightColor.WhiteForbackgroundColor,
      filled: true,
      contentPadding: EdgeInsets.fromLTRB(2, 0, 2, 0),
      focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(100.0),
          borderSide: BorderSide(color: LightColor.grayColor)),
      enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(100.0),
          borderSide: BorderSide(color: LightColor.blackColor)),
      errorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(100.0),
          borderSide: BorderSide(color: Colors.red, width: 2.0)),
      focusedErrorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(100.0),
          borderSide: BorderSide(color: Colors.red, width: 2.0)),
    );
  }

  InputDecoration textInputDecorationAge(
      [String lableText = "", String hintText = ""]) {
    return InputDecoration(
      labelText: lableText,
      hintText: hintText,
      hintStyle: TextStyle(color: LightColor.turquoiseColor),
      labelStyle: TextStyle(color: LightColor.blackColor),
      prefixIcon: Icon(
        Icons.calendar_today_sharp,
        color: LightColor.turquoiseColor,
      ),
      fillColor: LightColor.WhiteForbackgroundColor,
      filled: true,
      contentPadding: EdgeInsets.fromLTRB(2, 0, 2, 0),
      focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(100.0),
          borderSide: BorderSide(color: LightColor.grayColor)),
      enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(100.0),
          borderSide: BorderSide(color: LightColor.blackColor)),
      errorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(100.0),
          borderSide: BorderSide(color: Colors.red, width: 2.0)),
      focusedErrorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(100.0),
          borderSide: BorderSide(color: Colors.red, width: 2.0)),
    );
  }

  InputDecoration textInputDecorationEmail(
      [String lableText = "", String hintText = ""]) {
    return InputDecoration(
      labelText: lableText,
      hintText: hintText,
      hintStyle: TextStyle(color: LightColor.turquoiseColor),
      labelStyle: TextStyle(color: LightColor.blackColor),
      prefixIcon: Icon(
        Icons.email,
        color: LightColor.turquoiseColor,
      ),
      fillColor: LightColor.WhiteForbackgroundColor,
      filled: true,
      contentPadding: EdgeInsets.fromLTRB(2, 0, 2, 0),
      focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(100.0),
          borderSide: BorderSide(color: LightColor.grayColor)),
      enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(100.0),
          borderSide: BorderSide(color: LightColor.blackColor)),
      errorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(100.0),
          borderSide: BorderSide(color: Colors.red, width: 2.0)),
      focusedErrorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(100.0),
          borderSide: BorderSide(color: Colors.red, width: 2.0)),
    );
  }

  InputDecoration textInputDecorationPhone(
      [String lableText = "", String hintText = ""]) {
    return InputDecoration(
      labelText: lableText,
      hintText: hintText,
      hintStyle: TextStyle(color: LightColor.turquoiseColor),
      labelStyle: TextStyle(color: LightColor.blackColor),
      prefixIcon: Icon(
        Icons.phone,
        color: LightColor.turquoiseColor,
      ),
      fillColor: LightColor.WhiteForbackgroundColor,
      filled: true,
      contentPadding: EdgeInsets.fromLTRB(2, 0, 2, 0),
      focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(100.0),
          borderSide: BorderSide(color: LightColor.grayColor)),
      enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(100.0),
          borderSide: BorderSide(color: LightColor.blackColor)),
      errorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(100.0),
          borderSide: BorderSide(color: Colors.red, width: 2.0)),
      focusedErrorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(100.0),
          borderSide: BorderSide(color: Colors.red, width: 2.0)),
    );
  }

  InputDecoration textInputDecorationKey(
      [String lableText = "", String hintText = ""]) {
    return InputDecoration(
      labelText: lableText,
      hintText: hintText,
      hintStyle: TextStyle(color: LightColor.turquoiseColor),
      labelStyle: TextStyle(color: LightColor.blackColor),
      prefixIcon: Icon(
        Icons.key,
        color: LightColor.turquoiseColor,
      ),
      fillColor: LightColor.WhiteForbackgroundColor,
      filled: true,
      contentPadding: EdgeInsets.fromLTRB(2, 0, 2, 0),
      focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(100.0),
          borderSide: BorderSide(color: LightColor.grayColor)),
      enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(100.0),
          borderSide: BorderSide(color: LightColor.blackColor)),
      errorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(100.0),
          borderSide: BorderSide(color: Colors.red, width: 2.0)),
      focusedErrorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(100.0),
          borderSide: BorderSide(color: Colors.red, width: 2.0)),
    );
  }

  // BoxDecoration inputBoxDecorationShaddow() {
  //   return BoxDecoration(boxShadow: [
  //     BoxShadow(
  //       color: Colors.red.withOpacity(0.0),
  //       blurRadius: 20,
  //       offset: const Offset(0, 5),
  //     )
  //   ]);
  // }

  // BoxDecoration buttonBoxDecoration(BuildContext context, [String color1 = "", String color2 = ""]) {
  //   Color c1 = Theme.of(context).primaryColor;
  //   Color c2 = Theme.of(context).accentColor;
  //   if (color1.isEmpty == false) {
  //     c1 = HexColor(color1);
  //   }
  //   if (color2.isEmpty == false) {
  //     c2 = HexColor(color2);
  //   }
  //
  //   return BoxDecoration(
  //     // boxShadow: [
  //     //   BoxShadow(color: Colors.black26, offset: Offset(0, 4), blurRadius: 5.0)
  //     // ],
  //     // gradient: LinearGradient(
  //     //   begin: Alignment.topLeft,
  //     //   end: Alignment.bottomRight,
  //     //   stops: [0.0, 1.0],
  //     //   colors: [
  //     //     c1,
  //     //     c2,
  //     //   ],
  //     // ),
  //     //color: Colors.deepPurple.shade300,
  //     //borderRadius: BorderRadius.circular(30),
  //   );
  // }

  ButtonStyle buttonStyle() {
    return ButtonStyle(
      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
        RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20.0),
        ),
      ),
      minimumSize: MaterialStateProperty.all(Size(45, 45)),
      backgroundColor: MaterialStateProperty.all(LightColor.turquoiseColor),
      // shadowColor: MaterialStateProperty.all(LightColor.redColor),
    );
  }

  AlertDialog alartDialog(String title, String content, BuildContext context) {
    return AlertDialog(
      title: Text(title),
      content: Text(content),
      actions: [
        TextButton(
          child: Text(
            "OK",
            style: TextStyle(color: Colors.white),
          ),
          style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all(Colors.black38)),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
      ],
    );
  }
}

class LoginFormStyle {}
