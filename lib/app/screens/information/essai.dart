import 'package:flutter/material.dart';

class Essai extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Center(
        child: Container(
          width: screenWidth * 0.7,
          height: screenHeight * 0.5,
          color: Colors.deepOrangeAccent,
        ),
      ),
    );
  }
}
