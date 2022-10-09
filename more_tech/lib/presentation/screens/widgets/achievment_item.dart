import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:more_tech/presentation/theme/app_colors.dart';

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
      subtitle: Text(
        widget.subtitle,
        style: Theme.of(context)
            .textTheme
            .bodyText2
            ?.copyWith(color: AppColors.textGray),
      ),
    );
  }
}
