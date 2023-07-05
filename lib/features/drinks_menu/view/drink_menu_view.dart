import 'package:buttons_tabbar/buttons_tabbar.dart';
import 'package:flutter/material.dart';
import 'package:games_organizing/core/resources/manager_color.dart';
import 'package:games_organizing/features/drinks_menu/controller/drink_menu_controller.dart';
import 'package:get/get.dart';

import '../../../core/resources/manager_styles.dart';

class DrinkMenuView extends StatelessWidget {
  const DrinkMenuView({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<DrinkController>(
      init: DrinkController(),
      builder: (controller) {
        return Scaffold(
          appBar: AppBar(backgroundColor: Colors.white),
          body: Align(
            alignment: Alignment.topRight,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    flex: 1,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "منيو كافيه الحارة",
                          style: getBoldTextStyle(
                              fontSize: 18, color: Colors.black87),
                        ),
                        Text(
                          "أطلب ما يناسبك من المشروبات والوجبات",
                          style: getBoldTextStyle(
                              fontSize: 18, color: ManagerColors.greyDark),
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    flex: 9,
                    child: DefaultTabController(
                      initialIndex: 0,
                      length: 3,
                      child: Column(
                        children: [
                          ButtonsTabBar(
                              backgroundColor: ManagerColors.primaryColor,
                              unselectedBackgroundColor: Colors.grey[300],
                              unselectedLabelStyle: getBoldTextStyle(
                                  fontSize: 18, color: Colors.black87),
                              onTap: (value){},
                              labelStyle: getBoldTextStyle(
                                  fontSize: 18, color: Colors.white),
                              tabs: controller.taps),
                          Expanded(
                            child: TabBarView(children: controller.screens),
                          ),
                        ],
                      ),
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
