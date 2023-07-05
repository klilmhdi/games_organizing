import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../core/resources/manager_color.dart';
import '../../../../core/resources/manager_styles.dart';
import '../widgets/card_view.dart';
import '../widgets/cheer_view.dart';

enum ChallengeChoices { cardOption, cheerOption }

class ChallengeController extends GetxController {
  var selectedSegment = ChallengeChoices.cardOption.obs;

  void onSegmentChanged(ChallengeChoices value) {
    selectedSegment.value = value;
  }
}

class ChallengesView extends StatelessWidget {
  final ChallengeController controller = Get.put(ChallengeController());
  Map<ChallengeChoices, Widget> choicesPages = <ChallengeChoices, Widget>{
    ChallengeChoices.cardOption: CardChallengeView(),
    ChallengeChoices.cheerOption: CheerChallengeView(),
  };
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: [
          SizedBox(height: 40.0),
          Expanded(
            flex: 1,
            child: Container(
              height: 30,
              child: CupertinoNavigationBar(
                padding: EdgeInsetsDirectional.all(5),
                automaticallyImplyLeading: false,
                middle: Obx(() {
                  final selectedSegment = controller.selectedSegment.value;
                  return CupertinoSlidingSegmentedControl<ChallengeChoices>(
                    padding: EdgeInsets.all(5),
                    thumbColor: ManagerColors.primaryColor,
                    groupValue: selectedSegment,
                    onValueChanged: controller.selectedSegment,
                    children: <ChallengeChoices, Widget>{
                      ChallengeChoices.cardOption: Center(
                        child: Container(
                          padding: EdgeInsets.all(15.0),
                          child: Text(
                            'تحديات البلوت',
                            style: getMediumTextStyle(
                              color: selectedSegment ==
                                      ChallengeChoices.cardOption
                                  ? CupertinoColors.white
                                  : Color.fromRGBO(153, 153, 153, 1),
                              fontSize: 12,
                            ),
                          ),
                        ),
                      ),
                      ChallengeChoices.cheerOption: Center(
                        child: Container(
                          padding: EdgeInsets.all(12.0),
                          child: Text(
                            'تحديات الشطرنج',
                            style: getMediumTextStyle(
                              color: selectedSegment ==
                                      ChallengeChoices.cheerOption
                                  ? CupertinoColors.white
                                  : Color.fromRGBO(153, 153, 153, 1),
                              fontSize: 12,
                            ),
                          ),
                        ),
                      ),
                    },
                  );
                }),
              ),
            ),
          ),
          Expanded(
            flex: 6,
            child: SingleChildScrollView(
              child: Center(
                child: Obx(() {
                  final selectedSegment = controller.selectedSegment.value;
                  return choicesPages[selectedSegment] ?? SizedBox.shrink();
                }),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
