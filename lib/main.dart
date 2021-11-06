import 'package:flutter/material.dart';
import 'package:flutter_app_fastcall/views/foodlist_ui.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: FoodListUI(),
      theme: ThemeData(
        fontFamily: "Kanit",
      ),
    ),
  );
}
