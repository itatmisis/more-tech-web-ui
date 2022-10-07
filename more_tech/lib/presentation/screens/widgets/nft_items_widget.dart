import 'package:flutter/material.dart';
import 'package:more_tech/presentation/theme/app_colors.dart';

class NFTItems extends StatelessWidget {
  const NFTItems({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: AppColors.containerColor1,
      ),
    );
  }
}
