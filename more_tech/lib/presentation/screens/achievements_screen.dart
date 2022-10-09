import 'package:flutter/material.dart';
import 'package:more_tech/presentation/screens/widgets/future_achievments.dart';
import 'package:more_tech/presentation/screens/widgets/past_achievments.dart';
class Achievments extends StatelessWidget {
  const Achievments({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 24),
      child: Row(
        children: [
          Column(),
          Column(),
          Expanded(
            flex: 1,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Ваша панель активности',
                  style: Theme.of(context).textTheme.headline1,
                ),
                const SizedBox(
                  height: 36,
                ),
                const PastAchievments(),
              ],
            ),
          ),
          const SizedBox(
            width: 24,
          ),
          Expanded(
            flex: 2,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                FutureAchievments(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
