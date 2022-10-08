import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:more_tech/presentation/theme/app_colors.dart';

class Topbar extends StatefulWidget {
  final int currentPage;
  final void Function(int)? onTap;

  const Topbar({super.key, this.currentPage = 0, this.onTap});

  @override
  State<Topbar> createState() => _TopbarState();
}

class _TopbarState extends State<Topbar> {
  List<String> titles = ['Личный кабинет', 'Панель активности', 'Достижения'];
  List<String> iconAssets = [
    'assets/images/home.svg',
    'assets/images/activity.svg',
    'assets/images/star.svg'
  ];

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Align(
          alignment: Alignment.centerLeft,
          child: SvgPicture.asset(
            'assets/images/vtb.svg',
            height: 30,
          ),
        ),
        Align(
          alignment: Alignment.center,
          child: Row(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: List<Widget>.generate(
              3,
              (index) => GestureDetector(
                  onTap:
                      widget.onTap != null ? () => widget.onTap!(index) : null,
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Stack(
                        children: [
                          Align(
                            alignment: Alignment.center,
                            child: AnimatedContainer(
                                duration: const Duration(milliseconds: 100),
                                height: 30,
                                width: 30,
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  gradient: widget.currentPage == index
                                      ? AppColors.backgroundButtonGradient
                                      : null,
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.all(6),
                                  child: SvgPicture.asset(
                                    iconAssets[index],
                                    alignment: Alignment.center,
                                    color: widget.currentPage == index
                                        ? AppColors.buttonBlue1
                                        : AppColors.textGray,
                                  ),
                                )),
                          ),
                        ],
                      ),
                      const SizedBox(
                        width: 5,
                      ),
                      Text(
                        titles[index],
                        style: widget.currentPage == index
                            ? Theme.of(context)
                                .textTheme
                                .bodyText1!
                                .copyWith(color: AppColors.textWhite)
                            : Theme.of(context)
                                .textTheme
                                .bodyText1!
                                .copyWith(color: AppColors.textGray),
                      ),
                      SizedBox(
                        width: index == titles.length - 1 ? 0 : 20,
                      )
                    ],
                  )),
            ),
          ),
        )
      ],
    );
  }
}
