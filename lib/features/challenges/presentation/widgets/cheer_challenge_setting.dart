import 'package:flutter/material.dart';
import 'package:games_organizing/core/resources/manager_color.dart';
import 'package:games_organizing/core/widgets/main_button.dart';
import 'package:get/get.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

import '../../../../core/resources/manager_fonts.dart';
import '../../../../core/resources/manager_styles.dart';
import '../../../../core/resources/managers_size.dart';

class CheerChallengeSettingView extends StatefulWidget {
  const CheerChallengeSettingView({super.key});

  @override
  State<CheerChallengeSettingView> createState() =>
      _CheerChallengeSettingViewState();
}

class _CheerChallengeSettingViewState extends State<CheerChallengeSettingView>
    with TickerProviderStateMixin {

  TabController? tabController;

  @override
  void initState() {
    super.initState();
    tabController ?? TabController(length: 2, vsync: this);
  }

  @override
  void dispose() {
    tabController!.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.white),
      body: DefaultTabController(
        length: 2,
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Align(
                alignment: Alignment.topRight,
                child: Padding(
                  padding: EdgeInsets.all(8),
                  child: Text("الكافي شوب الذي سيقام به التحدي",
                      style: getMediumTextStyle(
                          fontSize: 18, color: ManagerColors.greyDark)),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Card(
                  elevation: 2.0,
                  child: Row(
                    children: [
                      Expanded(
                        flex: 1,
                        child: Container(
                          width: ManagerWidth.w90,
                          height: ManagerHeight.h76,
                          decoration: BoxDecoration(
                            // image: DecorationImage(
                            //     image: NetworkImage(coffeeModel!.image.onNull()),
                            //     fit: BoxFit.cover),
                            color: Colors.grey,
                            borderRadius: BorderRadius.circular(ManagerRadius.r8),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: ManagerWidth.w12,
                      ),
                      Expanded(
                        flex: 3,
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "كافي شوب الحارة",
                                  style: getMediumTextStyle(
                                      fontSize: ManagerFontSize.s14,
                                      color: ManagerColors.black),
                                  textAlign: TextAlign.start,
                                ),
                                Container(
                                  width: ManagerWidth.w64,
                                  height: ManagerHeight.h26,
                                  padding: EdgeInsetsDirectional.symmetric(
                                      horizontal: ManagerWidth.w8),
                                  alignment: Alignment.topLeft,
                                  decoration: BoxDecoration(
                                    // color: coffeeModel!.isOpen == true
                                    //     ? ManagerColors.green
                                    //     : ManagerColors.primaryColor,
                                    color: Colors.red,
                                    borderRadius:
                                        BorderRadius.circular(ManagerRadius.r30),
                                  ),
                                  child: Center(
                                    child: Text(
                                      // coffeeModel!.isOpen == true
                                      //     ? ManagerStrings.open
                                      //     : ManagerStrings.closed,
                                      "منيو الكافي",
                                      style: getRegularTextStyle(
                                        fontSize: ManagerFontSize.s10,
                                        color: ManagerColors.white,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                Icon(
                                  Icons.location_pin,
                                  color: ManagerColors.grey,
                                  size: ManagerIconSize.s16,
                                ),
                                SizedBox(
                                  width: ManagerWidth.w8,
                                ),
                                Text(
                                  "جدة, الأندلس مول, شارع بغداد",
                                  style: getRegularTextStyle(
                                      fontSize: ManagerFontSize.s12,
                                      color: ManagerColors.grey),
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                Icon(
                                  Icons.send,
                                  color: Colors.red,
                                  size: ManagerIconSize.s16,
                                ),
                                SizedBox(
                                  width: ManagerWidth.w8,
                                ),
                                Text(
                                  "يبعد عنك 120 كم",
                                  style: getRegularTextStyle(
                                      fontSize: ManagerFontSize.s12,
                                      color: Colors.red),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              TabBar(
                controller: tabController,
                tabs: [
                  Tab(text: 'تفاصيل التحدي'),
                  Tab(text: 'تشكيل التحدي'),
                ],
              ),
              Expanded(
                child: TabBarView(
                  controller: tabController,
                  children: [
                    Column(
                      children: [
                        SizedBox(
                          height: 10.0,
                        ),
                        Container(
                          height: 35,
                          width: 215,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.only(
                                topRight: Radius.circular(20.0),
                                topLeft: Radius.circular(20.0)),
                            color: ManagerColors.greyLight,
                          ),
                          child: Center(
                            child: Text("تفاصيل البلوت الأسطوري",
                                style: getMediumTextStyle(
                                    fontSize: 16, color: Colors.black87)),
                          ),
                        ),
                        Container(
                          height: 73,
                          width: double.infinity,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.only(
                                topRight: Radius.circular(20.0),
                                topLeft: Radius.circular(20.0)),
                            color: ManagerColors.greyLight,
                          ),
                          child: Center(
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Row(
                                crossAxisAlignment:
                                CrossAxisAlignment.center,
                                mainAxisAlignment:
                                MainAxisAlignment.spaceBetween,
                                children: [
                                  Column(
                                    children: [
                                      Row(
                                        children: [
                                          Icon(Icons.chair,
                                              color:
                                              ManagerColors.greyDark),
                                          Text("عدد المنتسبين",
                                              style: getMediumTextStyle(
                                                  fontSize: 16,
                                                  color: ManagerColors
                                                      .greyDark)),
                                        ],
                                      ),
                                      Text("(12) لاعب",
                                          style: getMediumTextStyle(
                                              fontSize: 16,
                                              color: Colors.black87)),
                                    ],
                                  ),
                                  VerticalDivider(),
                                  Column(
                                    children: [
                                      Row(
                                        children: [
                                          Icon(Icons.discount,
                                              color:
                                              ManagerColors.greyDark),
                                          Text("سعر التحدي",
                                              style: getMediumTextStyle(
                                                  fontSize: 16,
                                                  color: ManagerColors
                                                      .greyDark)),
                                        ],
                                      ),
                                      Text("5 ريال شامل المشروب",
                                          style: getMediumTextStyle(
                                              fontSize: 16,
                                              color: Colors.black87)),
                                    ],
                                  ),
                                  VerticalDivider(),
                                  Column(
                                    children: [
                                      Row(
                                        children: [
                                          Icon(Icons.person,
                                              color:
                                              ManagerColors.greyDark),
                                          Text("عدد المقاعد الكلي",
                                              style: getMediumTextStyle(
                                                  fontSize: 16,
                                                  color: ManagerColors
                                                      .greyDark)),
                                        ],
                                      ),
                                      Text("(16) مقعد",
                                          style: getMediumTextStyle(
                                              fontSize: 16,
                                              color: Colors.black87)),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 20.0,
                        ),
                        Text("سوف يبدأ التحدي عند إكتمال عدد اللاعبين",
                            style: getMediumTextStyle(
                                fontSize: 18, color: ManagerColors.black)),
                        CircularPercentIndicator(
                          radius: 60.0,
                          percent: .8,
                          backgroundColor: ManagerColors.white,
                          animation: true,
                          animationDuration: 3,
                          lineWidth: 5,
                          circularStrokeCap: CircularStrokeCap.round,
                          curve: Curves.bounceInOut,
                          center: Center(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(
                                  Icons.chair,
                                  size: 40.0,
                                  color: ManagerColors.primaryColor,
                                ),
                                Row(
                                  mainAxisAlignment:
                                  MainAxisAlignment.center,
                                  crossAxisAlignment:
                                  CrossAxisAlignment.center,
                                  children: [
                                    Text(
                                      "16/",
                                      style: getMediumTextStyle(
                                          fontSize: 25,
                                          color: ManagerColors
                                              .primaryColorLight),
                                    ),
                                    Text(
                                      "12",
                                      style: getMediumTextStyle(
                                          fontSize: 27,
                                          color:
                                          ManagerColors.primaryColor),
                                    ),
                                  ],
                                )
                              ],
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 20.0,
                        ),
                        Padding(
                          padding:
                          const EdgeInsets.symmetric(horizontal: 8.0),
                          child: Container(
                            decoration: BoxDecoration(borderRadius: BorderRadius.circular(13)),
                            child: ListTile(
                              tileColor: ManagerColors.greyLight,
                              leading: Container(
                                height: 42,
                                width: 42,
                                decoration: BoxDecoration(
                                    shape: BoxShape.rectangle,
                                    borderRadius: BorderRadius.circular(5.0),
                                    color: ManagerColors.white),
                                child: Icon(Icons.card_giftcard_sharp,
                                    color: Colors.red),
                              ),
                              title: Text(
                                  "سوف يكون هناك جاهزة للفائز مقدمة من إدارة التطبيق",
                                  style: getMediumTextStyle(
                                      fontSize: 15,
                                      color: ManagerColors.greyDark)),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 20.0,
                        ),
                        Padding(
                          padding:
                          const EdgeInsets.symmetric(horizontal: 18.0),
                          child: mainButton(
                              child: Text("إنضم للتحدي الآن",
                                  style: getBoldTextStyle(
                                      fontSize: 16,
                                      color: ManagerColors.white)),
                              color: ManagerColors.primaryColor,
                              minWidth: double.infinity,
                              height: 40.0),
                        )
                      ],
                    ),
                    Container(
                      child: Text('Screen 2'),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
