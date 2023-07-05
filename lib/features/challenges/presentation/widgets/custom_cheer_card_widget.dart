import 'package:flutter/material.dart';
import '../../../../../core/resources/manager_color.dart';
import '../../../../../core/resources/manager_fonts.dart';
import '../../../../../core/resources/manager_strings.dart';
import '../../../../../core/resources/manager_styles.dart';
import '../../../../../core/resources/managers_size.dart';

class CustomCheerCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          Container(
            width: double.infinity,
            height: ManagerHeight.h118,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(ManagerRadius.r8),
              color: ManagerColors.white,
            ),
            child: Row(
              children: [
                Container(
                  width: ManagerWidth.w118,
                  height: ManagerHeight.h118,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage("assets/images/champion.png"),
                        fit: BoxFit.cover),
                    borderRadius: BorderRadius.circular(ManagerRadius.r8),
                  ),
                ),
                FittedBox(
                  child: Container(
                    width: ManagerWidth.w200,
                    alignment: AlignmentDirectional.topStart,
                    padding: EdgeInsetsDirectional.only(
                        start: ManagerWidth.w12,
                        top: ManagerHeight.h4,
                        bottom: ManagerHeight.h4),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "تحدي الشطرنج الأسطوري",
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
                                color: ManagerColors.green,
                                borderRadius:
                                BorderRadius.circular(ManagerRadius.r30),
                              ),
                              child: Center(
                                child: Text(
                                  "متاح",
                                  style: getBoldTextStyle(
                                    fontSize: ManagerFontSize.s16,
                                    color: ManagerColors.white,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: ManagerHeight.h2,
                        ),
                        Row(
                          children: [
                            Icon(
                              Icons.local_offer,
                              color: ManagerColors.grey,
                              size: ManagerIconSize.s16,
                            ),
                            SizedBox(
                              width: ManagerWidth.w8,
                            ),
                            Row(
                              children: [
                                Text(
                                  "قيمة الاشتراك",
                                  style: getRegularTextStyle(
                                    fontSize: ManagerFontSize.s12,
                                    color: ManagerColors.grey,
                                  ),
                                ),
                                SizedBox(
                                  width: ManagerWidth.w6,
                                ),
                                Text(
                                  "5 ريال شامل المشروب",
                                  style: getRegularTextStyle(
                                    fontSize: ManagerFontSize.s14,
                                    color: ManagerColors.black,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Icon(
                              Icons.event_seat,
                              color: ManagerColors.grey,
                              size: ManagerIconSize.s16,
                            ),
                            SizedBox(
                              width: ManagerWidth.w8,
                            ),
                            Row(
                              children: [
                                Text(
                                  "عدد المقاعد الكلي",
                                  style: getRegularTextStyle(
                                    fontSize: ManagerFontSize.s12,
                                    color: ManagerColors.grey,
                                  ),
                                ),
                                SizedBox(
                                  width: ManagerWidth.w6,
                                ),
                                Text(
                                  "12 مقعد",
                                  style: getRegularTextStyle(
                                    fontSize: ManagerFontSize.s14,
                                    color: ManagerColors.black,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Icon(
                              Icons.person,
                              color: ManagerColors.grey,
                              size: ManagerIconSize.s16,
                            ),
                            SizedBox(
                              width: ManagerWidth.w8,
                            ),
                            Row(
                              children: [
                                Text(
                                  "عدد المنتسبين",
                                  style: getRegularTextStyle(
                                    fontSize: ManagerFontSize.s12,
                                    color: ManagerColors.grey,
                                  ),
                                ),
                                SizedBox(
                                  width: ManagerWidth.w6,
                                ),
                                Text(
                                  "12 لاعب",
                                  style: getRegularTextStyle(
                                    fontSize: ManagerFontSize.s14,
                                    color: ManagerColors.black,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          Divider(color: Colors.black54, thickness: 1,)
        ],
      ),
    );
  }
}
