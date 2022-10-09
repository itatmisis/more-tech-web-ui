import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:more_tech/presentation/theme/app_colors.dart';

class TaskItem extends StatefulWidget {
  const TaskItem({Key? key, required this.reward}) : super(key: key);
  final int reward;

  @override
  State<TaskItem> createState() => _TaskItemState();
}

class _TaskItemState extends State<TaskItem> {
  bool isCheck = false;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: GestureDetector(
        onTap: () {
          setState(() => isCheck = !isCheck);
        },
        child: Container(
          margin: const EdgeInsets.only(
            left: 10,
            top: 10,
          ),
          decoration: BoxDecoration(
            color:
                isCheck ? AppColors.containerColor2 : const Color(0xFF003C65),
            shape: BoxShape.circle,
          ),
          child: AnimatedSwitcher(
            duration: const Duration(milliseconds: 300),
            transitionBuilder: (child, animation) => FadeTransition(
              opacity: animation,
              child: ScaleTransition(scale: animation, child: child),
            ),
            child: Icon(
              Icons.check_rounded,
              key: ValueKey(!isCheck),
              color: isCheck ? Colors.transparent : AppColors.buttonBlue2,
            ),
          ),
        ),
      ),
      title: Text(
        "Любитель кофе",
        style: Theme.of(context).textTheme.headline4,
      ),
      subtitle: Text(
        "Приобрести 10  чашек кофе",
        style: Theme.of(context)
            .textTheme
            .bodyText2
            ?.copyWith(color: AppColors.textGray),
      ),
      trailing: Container(
        padding: const EdgeInsets.symmetric(vertical: 4, horizontal: 8),
        height: 35,
        width: 110,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            color: AppColors.containerColor2),
        child: Expanded(
          child: Row(
            children: [
              //Image.asset("assets/images/rub.png"),
              Container(
                padding: const EdgeInsets.all(10),
                decoration: const BoxDecoration(
                  color: AppColors.buttonBlue2,
                  shape: BoxShape.circle,
                ),
              ),
              const SizedBox(
                width: 8,
              ),
              Text("+${widget.reward} ₽")
            ],
          ),
        ),
      ),
    );
  }
}
