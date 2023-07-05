import 'package:flutter/material.dart';
import 'package:games_organizing/core/resources/manager_color.dart';
import 'package:games_organizing/core/resources/manager_styles.dart';
import 'package:games_organizing/core/widgets/base_text_form_field.dart';
import 'package:games_organizing/core/widgets/main_button.dart';
import 'package:games_organizing/features/booking_table_view/controller/booking_controller.dart';
import 'package:get/get_state_manager/get_state_manager.dart';

import '../../../core/resources/manager_strings.dart';
import '../../../core/resources/managers_size.dart';

class bookingTableView extends StatelessWidget {
  const bookingTableView({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<BookingTableController>(
      init: BookingTableController(),
      builder: (controller) {
        return Scaffold(
          appBar: AppBar(
              backgroundColor: Colors.white,
              title: Text(
                "واجهة حجز المقعد",
                style: getBoldTextStyle(fontSize: 18, color: Colors.black87),
              )),
          body: Form(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "عدد المقاعد المراد حجزها",
                          style: getMediumTextStyle(
                              fontSize: 16, color: Colors.black87),
                        ),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            IconButton.filled(
                                onPressed: () {},
                                icon: Center(
                                    child: Text(
                                  "-",
                                  style: getBoldTextStyle(
                                      fontSize: 36, color: Colors.white),
                                )),
                                style: ButtonStyle(
                                    backgroundColor: MaterialStatePropertyAll(
                                        ManagerColors.primaryColor),
                                    shape: MaterialStatePropertyAll(
                                        CircleBorder()))),
                            Text("03",
                                style: getMediumTextStyle(
                                    fontSize: 22,
                                    color: ManagerColors.greyDark)),
                            IconButton.filled(
                                onPressed: () {},
                                icon: Center(child: Icon(Icons.add)),
                                style: ButtonStyle(
                                    backgroundColor: MaterialStatePropertyAll(
                                        ManagerColors.primaryColor),
                                    shape: MaterialStatePropertyAll(
                                        CircleBorder()))),
                          ],
                        )
                      ],
                    ),
                  ),
                  SizedBox(height: 40.0),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 18.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("حجز اليوم",
                            style: getBoldTextStyle(
                                fontSize: 15, color: Colors.black87)),
                        Text("من فضلك حدد الوقت المراد الحجز به",
                            style: getMediumTextStyle(
                                fontSize: 15, color: ManagerColors.greyLight)),
                        baseTextFormField(
                            controller: controller.timeTodayController,
                            icon: Icon(Icons.access_alarm_outlined),
                            hintText: "9:00 pm"),
                      ],
                    ),
                  ),
                  SizedBox(height: 80.0),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 18.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("حجز في وقت لاحق",
                            style: getBoldTextStyle(
                                fontSize: 15, color: Colors.black87)),
                        Text("من فضلك حدد الوقت والتاريخ المراد الحجز به",
                            style: getMediumTextStyle(
                                fontSize: 15, color: ManagerColors.greyLight)),
                        baseTextFormField(
                            controller: controller.timeTodayController,
                            icon: Icon(Icons.calendar_month),
                            hintText: "15/5/2023"),
                        SizedBox(height: 10.0),
                        baseTextFormField(
                            controller: controller.timeTodayController,
                            icon: Icon(Icons.access_alarm_outlined),
                            hintText: "9:00 pm"),
                      ],
                    ),
                  ),
                  SizedBox(height: 80.0),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 18.0),
                    child: mainButton(
                      color: ManagerColors.primaryColor,
                      height: ManagerHeight.h48,
                      minWidth: double.infinity,
                      elevation: 0.1,
                      shapeBorder: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)),
                      child: Text(
                        "إستمر",
                        style: getMediumTextStyle(
                            fontSize: 18, color: ManagerColors.white),
                      ),
                      onPressed: () {},
                    ),
                  )
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
