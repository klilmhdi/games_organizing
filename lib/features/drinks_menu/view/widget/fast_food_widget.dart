import 'package:flutter/material.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';

class FastFoodWidget extends StatelessWidget {
  const FastFoodWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return AnimationLimiter(
      child: GridView.count(
        crossAxisCount: 2,
        padding: EdgeInsets.all(8),
        children: List.generate(
          4,
          (int index) {
            return AnimationConfiguration.staggeredGrid(
              position: index,
              duration: const Duration(milliseconds: 375),
              columnCount: 3,
              child: ScaleAnimation(
                child: FadeInAnimation(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      color: Colors.red,
                      height: 80.0,
                      width: 80.0,
                    ),
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
