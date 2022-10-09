import 'package:flutter/material.dart';
import 'package:more_tech/presentation/screens/widgets/achievments/achievment_item.dart';
import 'package:more_tech/presentation/theme/app_colors.dart';

class PastAchievments extends StatelessWidget {
  const PastAchievments({Key? key}) : super(key: key);

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
              "Прошедшие",
              style: Theme.of(context)
                  .textTheme
                  .headline3
                  ?.copyWith(color: AppColors.textGray),
            ),
            Expanded(
              child: ListView.separated(
                itemBuilder: (context, index) {
                  return const AchievmentItem(
                    future: false,
                    title: "Кофеман",
                    subtitle: "Выполните все задания из серии Любитель кофе",
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
