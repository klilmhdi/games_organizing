import 'package:flutter/material.dart';
import 'package:games_organizing/core/resources/manager_fonts.dart';
import 'package:games_organizing/core/resources/manager_styles.dart';
import 'package:games_organizing/core/resources/managers_size.dart';
import 'package:games_organizing/features/settings/presentation/view/widget/custom_divider.dart';
import 'package:games_organizing/features/settings/presentation/view/widget/custom_list_tile.dart';
import '../../../../core/resources/manager_color.dart';
import '../../../../core/resources/manager_strings.dart';
import '../../../../core/widgets/user_info_widget.dart';

class SettingsView extends StatelessWidget {
  const SettingsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: ManagerColors.greyWhite,
        title: Text(
          ManagerStrings.settingsNav,
          style: getMediumTextStyle(
              fontSize: ManagerFontSize.s16, color: ManagerColors.black),
        ),
      ),
      body: Column(
        children: [
          Container(
            padding: EdgeInsetsDirectional.only(
              start: ManagerWidth.w16,
              bottom: ManagerHeight.h16,
            ),
            height: ManagerHeight.h144,
            color: ManagerColors.greyWhite,
            child: UserInfoWidget(
              isSettingsView: true,
            ),
          ),
          Container(
            padding: EdgeInsetsDirectional.symmetric(
                vertical: ManagerHeight.h18, horizontal: ManagerWidth.w16),
            child: Column(
              children: [
                //title
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Padding(
                      padding:
                          EdgeInsetsDirectional.only(start: ManagerWidth.w16),
                      child: Text(
                        ManagerStrings.allSettings,
                        style: getRegularTextStyle(
                            fontSize: ManagerFontSize.s14,
                            color: ManagerColors.black),
                      ),
                    ),
                  ],
                ),
                //all settings list
                Container(
                  height: ManagerHeight.h324,
                  decoration: BoxDecoration(
                    color: ManagerColors.greyWhite,
                    borderRadius: BorderRadius.circular(ManagerRadius.r16),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      CustomListTile(
                        title: ManagerStrings.appTheme,
                        subTitle: 'فاتح', //this will changed using controller
                        trailing: SizedBox(
                          width: ManagerWidth.w34,
                          height: ManagerHeight.h14,
                          child: Switch(
                            value: true,
                            onChanged: (value) {
                              //TODO:using controller change theme
                            },
                            activeColor: ManagerColors.primaryColor,
                            activeTrackColor: ManagerColors.white,
                            inactiveThumbColor: ManagerColors.grey,
                            inactiveTrackColor: ManagerColors.white,
                            splashRadius: ManagerRadius.r8,
                          ),
                        ),
                        leading: Container(
                          width: ManagerWidth.w42,
                          height: ManagerHeight.h40,
                          decoration: BoxDecoration(
                            color: ManagerColors.white,
                            borderRadius:
                                BorderRadius.circular(ManagerRadius.r8),
                          ),
                          child: Icon(Icons.light_mode_outlined,
                              color: ManagerColors.primaryColor,
                              size: ManagerIconSize.s16),
                        ),
                      ),
                      const CustomDivider(),
                      CustomListTile(
                        title: ManagerStrings.notifications,
                        // subTitle: 'فاتح',
                        trailing: SizedBox(
                          width: ManagerWidth.w34,
                          height: ManagerHeight.h14,
                          child: Switch(
                            value: true,
                            onChanged: (value) {
                              //TODO:using controller change theme
                            },
                            activeColor: ManagerColors.primaryColor,
                            activeTrackColor: ManagerColors.white,
                            inactiveThumbColor: ManagerColors.grey,
                            inactiveTrackColor: ManagerColors.white,
                            splashRadius: ManagerRadius.r8,
                          ),
                        ),
                        leading: Container(
                          width: ManagerWidth.w42,
                          height: ManagerHeight.h40,
                          decoration: BoxDecoration(
                            color: ManagerColors.white,
                            borderRadius:
                                BorderRadius.circular(ManagerRadius.r8),
                          ),
                          child: Icon(Icons.notifications,
                              color: ManagerColors.primaryColor,
                              size: ManagerIconSize.s16),
                        ),
                      ),
                      const CustomDivider(),
                      CustomListTile(
                        title: ManagerStrings.privacyPolucy,
                        trailing: IconButton(
                          alignment: Alignment.centerLeft,
                          onPressed: () {},
                          icon: Icon(
                            Icons.arrow_forward_ios_rounded,
                            size: ManagerIconSize.s16,
                          ),
                        ),
                        leading: Container(
                          width: ManagerWidth.w42,
                          height: ManagerHeight.h40,
                          decoration: BoxDecoration(
                            color: ManagerColors.white,
                            borderRadius:
                                BorderRadius.circular(ManagerRadius.r8),
                          ),
                          child: Icon(Icons.file_copy_sharp,
                              color: ManagerColors.primaryColor,
                              size: ManagerIconSize.s16),
                        ),
                      ),
                      const CustomDivider(),
                      CustomListTile(
                        title: ManagerStrings.userPlace,
                        subTitle:'جدة, شارع التحلية', //this will changed using controller
                        leading: Container(
                          width: ManagerWidth.w42,
                          height: ManagerHeight.h40,
                          decoration: BoxDecoration(
                            color: ManagerColors.white,
                            borderRadius:
                                BorderRadius.circular(ManagerRadius.r8),
                          ),
                          child: Icon(Icons.place,
                              color: ManagerColors.primaryColor,
                              size: ManagerIconSize.s16),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: ManagerHeight.h16,
                ),
                Container(
                  width: double.infinity,
                  height: ManagerHeight.h60,
                  decoration: BoxDecoration(
                    color: ManagerColors.greyWhite,
                    borderRadius: BorderRadius.circular(ManagerRadius.r8),
                  ),
                  child: CustomListTile(
                    title: ManagerStrings.signOut,
                    leading: Container(
                      width: ManagerWidth.w42,
                      height: ManagerHeight.h40,
                      decoration: BoxDecoration(
                        color: ManagerColors.white,
                        borderRadius: BorderRadius.circular(ManagerRadius.r8),
                      ),
                      child: Icon(Icons.exit_to_app,
                          color: ManagerColors.primaryColor,
                          size: ManagerIconSize.s16),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
