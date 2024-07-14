

import 'package:flutter/material.dart';
import 'package:toku_app/screens/home_page.dart';

void main() {
runApp(toku_app());
}
class toku_app extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePAge(),
    );
  }
}