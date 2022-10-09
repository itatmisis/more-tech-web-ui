import 'package:flutter/material.dart';
import 'package:more_tech/presentation/screens/widgets/achievments/achievment_item.dart';
import 'package:more_tech/presentation/theme/app_colors.dart';

class FutureAchievments extends StatelessWidget {
  const FutureAchievments({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 500,
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
              "Предстоящие",
              style: Theme.of(context)
                  .textTheme
                  .headline3
                  ?.copyWith(color: AppColors.textGray),
            ),
            Expanded(
              child: ListView.separated(
                itemBuilder: (context, index) {
                  return const Padding(
                    padding: EdgeInsets.all(4),
                    child: AchievmentItem(
                      future: true,
                      title: "Любимец коллег",
                      subtitle: "Дарите коллегам NFT-сертификаты",
                    ),
                  );
                },
                itemCount: 3,
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
