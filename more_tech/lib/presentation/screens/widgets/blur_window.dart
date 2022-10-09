import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:more_tech/presentation/theme/app_colors.dart';

class BlurWindow extends StatefulWidget {

  Widget? child;

  BlurWindow({super.key, this.child});

  @override
  State<BlurWindow> createState() => _BlurWindowState();
}

class _BlurWindowState extends State<BlurWindow> {
  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(12),
      child: BackdropFilter(
        filter: ImageFilter.blur(
          sigmaX: 35.0,
          sigmaY: 35.0,
        ),
        child: Container(
          width: double.infinity,
          height: double.infinity,
          decoration: BoxDecoration(
            color: AppColors.backgroundTransperent,
            borderRadius: BorderRadius.circular(12)
          ),
          child: widget.child
        ),
      ),
    );
  }
}