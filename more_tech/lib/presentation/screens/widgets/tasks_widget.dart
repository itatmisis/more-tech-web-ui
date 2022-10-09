import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:more_tech/presentation/screens/widgets/task_item_widget.dart';
import 'package:more_tech/presentation/theme/app_colors.dart';

class Tasks extends StatelessWidget {
  const Tasks({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 600,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: AppColors.containerColor1,
      ),
      child: Padding(
        padding: const EdgeInsets.all(24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Ваши задания",
              style: Theme.of(context).textTheme.headline2,
            ),
            const SizedBox(
              height: 24,
            ),
            Expanded(
              child: ListView.separated(
                itemBuilder: (context, index) {
                  return const TaskItem(
                    reward: 4000,
                  );
                },
                itemCount: 5,
                separatorBuilder: (BuildContext context, int index) {
                  return Divider();
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
