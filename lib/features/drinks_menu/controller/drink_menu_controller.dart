import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:games_organizing/features/drinks_menu/view/widget/cold_drink_widget.dart';
import 'package:games_organizing/features/drinks_menu/view/widget/fast_food_widget.dart';
import 'package:games_organizing/features/drinks_menu/view/widget/hot_drink_widget.dart';
import 'package:get/get.dart';

class DrinkController extends GetxController {
  List<Widget> screens = const [
    ColdDrinkWidget(),
    HotDrinkWidget(),
    FastFoodWidget()
  ];

  List<Tab> taps = [
    Tab(
      text: 'مشروبات باردة',
      icon: Container(
        decoration: BoxDecoration(shape: BoxShape.rectangle, border: Border.all(color: Colors.black87)),
        child: Image.asset("assets/images/cold-drink_icon.png"),
      ),
    ),
    Tab(
      text: 'مشروبات ساخنة',
      icon: Container(
        child: Image.asset("assets/images/hot-drink_icon.png"),
      ),
    ),
    Tab(
      text: 'وجبات سريعة',
      icon: Container(
        child: Image.asset("assets/images/fast-food_icon.png"),
      ),
    ),
  ];
  int currentIndex = 0;
}
