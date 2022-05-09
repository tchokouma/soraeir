import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../themes/light_color.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Text("Home screen");
  }
}
