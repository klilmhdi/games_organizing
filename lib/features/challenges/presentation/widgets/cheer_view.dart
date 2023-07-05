import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';
import 'package:games_organizing/features/challenges/presentation/widgets/custom_card.dart';
import 'package:games_organizing/features/challenges/presentation/widgets/custom_cheer_card_widget.dart';
import 'package:games_organizing/routes/routes.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import '../../../../core/resources/manager_styles.dart';
import '../../../../core/resources/managers_size.dart';

class CheerChallengeView extends StatelessWidget {
  const CheerChallengeView({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      physics: BouncingScrollPhysics(),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("قائمة تحديات الشطرنج المتوفرة",
                    style: getBoldTextStyle(
                        fontSize: 16, color: Colors.black87)),
                Text("(05)",
                    style:
                    getBoldTextStyle(fontSize: 22, color: Colors.red))
              ],
            ),
          ),
          Container(
            width: double.infinity,
            height: double.maxFinite,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: AnimationLimiter(
                child: ListView.builder(
                  itemCount: 5,
                  itemBuilder: (BuildContext context, int index) {
                    return AnimationConfiguration.staggeredList(
                      position: index,
                      duration: const Duration(milliseconds: 375),
                      child: SlideAnimation(
                        verticalOffset: 50.0,
                        child: FadeInAnimation(
                          child: GestureDetector(
                            onTap: ()=> Get.toNamed(Routes.cheerChallengeSettingView),
                            child: Container(
                              width: double.infinity,
                              child: CustomCheerCard(),
                            ),
                          ),
                        ),
                      ),
                    );
                  },
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
