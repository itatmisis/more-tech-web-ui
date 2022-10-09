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
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Ваш баланс', style: Theme.of(context).textTheme.headline4!.copyWith(color: AppColors.textGray),),
                  const SizedBox(height: 8),
                  Text('${spaceSeparateNumbers(balance.toStringAsFixed(2))} ₽', style: Theme.of(context).textTheme.headline2),
                ],
              ),
              SizedBox(
                width: 200,
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Expanded(
                      flex: 10,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            minimumSize: Size.zero,
                            padding: EdgeInsets.symmetric(
                                vertical: 18),
                            backgroundColor: Colors.red,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8),
                        )),
                        onPressed: () {},
                        child: Text(
                          "Отправить",
                          style: Theme.of(context)
                              .textTheme
                              .bodyText2
                              ?.copyWith(color: AppColors.textWhite),
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Expanded(
                      flex: 9,
                      child: ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                            minimumSize: Size.zero,
                            padding: EdgeInsets.symmetric(
                                vertical: 18),
                            backgroundColor: Colors.blue,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8),
                            )),
                        child: Text(
                          "Получить",
                          style: Theme.of(context)
                              .textTheme
                              .bodyText2
                              ?.copyWith(color: AppColors.textWhite),
                        ),
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        )
    );
  }
}
