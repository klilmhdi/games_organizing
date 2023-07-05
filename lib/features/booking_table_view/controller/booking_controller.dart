import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class BookingTableController extends GetxController{
  BookingTableController() {
    timeTodayController = TextEditingController();
    timeLaterController = TextEditingController();
    dateLaterController = TextEditingController();
  }
  late TextEditingController timeTodayController;
  late TextEditingController timeLaterController;
  late TextEditingController dateLaterController;

}