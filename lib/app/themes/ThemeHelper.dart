import 'package:flutter/material.dart';
import 'package:soraeir/app/themes/light_color.dart';
import 'dart:math' as math;

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
      hintStyle: TextStyle(color: LightColor.blackColor.withOpacity(0.6)),
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
          borderSide: BorderSide(color: LightColor.blackColor, width: 2.0)),
      focusedErrorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(100.0),
          borderSide: BorderSide(color: LightColor.blackColor, width: 2.0)),
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
      prefixIcon: Transform.rotate(
        angle: -math.pi / 4,
        child: IconButton(
          icon: Icon(
            Icons.vpn_key,
            color: LightColor.turquoiseColor,
          ),
          onPressed: null,
        ),
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
          borderSide: BorderSide(color: LightColor.blackColor, width: 20.0)),
      focusedErrorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(100.0),
          borderSide: BorderSide(color: LightColor.blackColor, width: 20.0)),
    );
  }

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

  ButtonStyle buttonStyle1() {
    return ButtonStyle(
      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
        RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.0),
        ),
      ),
      minimumSize: MaterialStateProperty.all(Size(20, 20)),
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
