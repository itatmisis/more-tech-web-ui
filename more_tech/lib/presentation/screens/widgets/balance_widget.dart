import 'package:flutter/material.dart';
import 'package:more_tech/presentation/theme/app_colors.dart';

class Balance extends StatelessWidget {
  const Balance({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColors.containerColor1,
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(12)),
    );
  }
}
