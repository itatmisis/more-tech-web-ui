import 'package:flutter/material.dart';
import 'package:more_tech/presentation/screens/widgets/future_achievments.dart';
import 'package:more_tech/presentation/screens/widgets/past_achievments.dart';
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
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Ваши достижения",
                        style: Theme.of(context).textTheme.headline1,
                      ),
                      SizedBox(height: 24,),
                      LinearPercentIndicator(
                        backgroundColor: AppColors.containerColor1,
                        animation: true,
                        lineHeight: 20.0,
                        animationDuration: 2500,
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
                const Expanded(
                  flex: 4,
                  child: PastAchievments(),
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
              children: const [
                FutureAchievments(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
