import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:more_tech/presentation/screens/widgets/task_item_widget.dart';
import 'package:more_tech/presentation/theme/app_colors.dart';

class Tasks extends StatelessWidget {
  const Tasks({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
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
                  return TaskItem(
                    title: 'Любитель кофе ${index+1}',
                    subtitle: "Приобрести ${3+index} чашек кофе",
                    reward: 4000+index*1000,
                  );
                },
                itemCount: 5,
                separatorBuilder: (BuildContext context, int index) {
                  return const Divider();
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}