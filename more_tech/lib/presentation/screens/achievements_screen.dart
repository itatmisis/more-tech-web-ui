import 'package:delayed_widget/delayed_widget.dart';
import 'package:flutter/material.dart';
import 'package:more_tech/presentation/screens/widgets/achievments/future_achievments.dart';
import 'package:more_tech/presentation/screens/widgets/achievments/past_achievments.dart';
import 'package:percent_indicator/percent_indicator.dart';

import '../theme/app_colors.dart';

class Achievments extends StatelessWidget {
  const Achievments({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 24),
      child: Row(
        children: [
          Expanded(
            flex: 1,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  flex: 1,
                  child: DelayedWidget(
                    delayDuration: const Duration(milliseconds: 400),
                    animationDuration: const Duration(seconds: 1),
                    animation: DelayedAnimations.SLIDE_FROM_BOTTOM,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Ваши достижения",
                          style: Theme.of(context).textTheme.headline1,
                        ),
                        const SizedBox(
                          height: 24,
                        ),
                        LinearPercentIndicator(
                          padding: EdgeInsets.zero,
                          backgroundColor: AppColors.containerColor1,
                          animation: true,
                          lineHeight: 20.0,
                          animationDuration: 2000,
                          percent: 0.15,
                          barRadius: const Radius.circular(16),
                          progressColor: AppColors.buttonBlue2,
                        ),
                        Text(
                          "41/304",
                          style: Theme.of(context).textTheme.headline3,
                        ),
                      ],
                    ),
                  ),
                ),
                Expanded(
                  flex: 4,
                  child: DelayedWidget(
                    delayDuration: const Duration(milliseconds: 800),
                    animationDuration: const Duration(seconds: 1),
                    animation: DelayedAnimations.SLIDE_FROM_BOTTOM,
                    child: const PastAchievments(),
                  ),
                )
              ],
            ),
          ),
          const SizedBox(
            width: 24,
          ),
          Expanded(
            flex: 2,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                DelayedWidget(
                  child: const FutureAchievments(),
                  delayDuration: const Duration(milliseconds: 200),
                  animationDuration: const Duration(seconds: 1),
                  animation: DelayedAnimations.SLIDE_FROM_BOTTOM,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
