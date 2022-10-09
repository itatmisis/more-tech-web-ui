import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:more_tech/presentation/theme/app_colors.dart';
import 'package:percent_indicator/percent_indicator.dart';

class AchievmentItem extends StatefulWidget {
  const AchievmentItem(
      {Key? key,
      required this.future,
      required this.title,
      required this.subtitle})
      : super(key: key);
  final bool future;
  final String title;
  final String subtitle;

  @override
  State<AchievmentItem> createState() => _AchievmentItemState();
}

class _AchievmentItemState extends State<AchievmentItem> {
  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Container(
        margin: const EdgeInsets.only(
          left: 10,
          top: 10,
        ),
        decoration: BoxDecoration(
          color: widget.future
              ? AppColors.containerColor2
              : const Color(0xFF003C65),
          shape: BoxShape.circle,
        ),
        child: Icon(
          Icons.check_rounded,
          color: widget.future ? Colors.transparent : AppColors.buttonBlue2,
        ),
      ),
      title: Text(
        widget.title,
        style: Theme.of(context).textTheme.headline4,
      ),
      subtitle: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            widget.subtitle,
            style: Theme.of(context)
                .textTheme
                .bodyText2
                ?.copyWith(color: AppColors.textGray),
          ),
          SizedBox(
            height: 4,
          ),
          if (widget.future)
            LinearPercentIndicator(
              backgroundColor: AppColors.containerColor2,
              padding: EdgeInsets.zero,
              width: 400,
              animation: true,
              lineHeight: 7.0,
              animationDuration: 1500,
              percent: 0.65,
              barRadius: const Radius.circular(16),
              progressColor: AppColors.buttonBlue2,
            ),
        ],
      ),
    );
  }
}
