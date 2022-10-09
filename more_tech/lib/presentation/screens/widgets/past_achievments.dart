import 'package:flutter/material.dart';
import 'package:more_tech/presentation/theme/app_colors.dart';

class PastAchievments extends StatelessWidget {
  const PastAchievments({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 600,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: AppColors.containerColor1,
      ),
    );
  }
}
