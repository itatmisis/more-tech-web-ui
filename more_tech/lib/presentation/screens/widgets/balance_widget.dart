import 'package:flutter/material.dart';
import 'package:more_tech/presentation/theme/app_colors.dart';
import 'package:more_tech/presentation/theme/app_theme.dart';

class Balance extends StatelessWidget {
  final double balance;

  const Balance({Key? key, this.balance = 0}) : super(key: key);

  String spaceSeparateNumbers(String res) {
    final result = res.replaceAllMapped(
        RegExp(r'(\d{1,3})(?=(\d{3})+(?!\d))'), (Match m) => '${m[1]} ');
    return result;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12.sc),
          color: AppColors.containerColor1,
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Text('Ваш баланс', style: Theme.of(context).textTheme.headline4!.copyWith(color: AppColors.textGray),),
              const SizedBox(height: 8),
              Text('${spaceSeparateNumbers(balance.toString())} ₽', style: Theme.of(context).textTheme.headline2),
            ],
          ),
        )
    );
  }
}
