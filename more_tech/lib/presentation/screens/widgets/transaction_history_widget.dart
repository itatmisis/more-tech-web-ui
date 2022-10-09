import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:more_tech/presentation/theme/app_colors.dart';
import 'package:more_tech/presentation/theme/app_theme.dart';

class TransactionDay {
  String dayName;
  bool isHighlight;
  List<Transaction> transactions;

  TransactionDay(this.dayName, this.transactions, [this.isHighlight = false]);
}

class Transaction {
  String time;
  String comment;
  String lastBalance;
  String resultBalance;
  TransactionResult result;

  Transaction(
      {required this.time,
      required this.comment,
      required this.lastBalance,
      required this.resultBalance,
      required this.result});
}

abstract class TransactionResult {}

class BalanceChange extends TransactionResult {
  int moneyDetails;

  BalanceChange(this.moneyDetails);
}

class NftChange extends TransactionResult {
  String imageUrl;
  String nftName;

  NftChange(this.nftName, [this.imageUrl = '']);
}

class TransactionHistory extends StatelessWidget {
  final List<TransactionDay> data;

  TransactionHistory({Key? key, this.data = const []}) : super(key: key);

  String spaceSeparateNumbers(String res) {
    final result = res.replaceAllMapped(
        RegExp(r'(\d{1,3})(?=(\d{3})+(?!\d))'), (Match m) => '${m[1]} ');
    return result;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          color: AppColors.containerColor1,
        ),
        child: Padding(
          padding: const EdgeInsets.only(top: 24, left: 24, right: 24),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Text(
                'История транзакций',
                style: Theme.of(context).textTheme.headline3,
              ),
              const SizedBox(
                height: 24,
              ),
              Row(
                mainAxisSize: MainAxisSize.max,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    flex: 2,
                    child: Text(
                      'Тип и дата',
                      style: Theme.of(context)
                          .textTheme
                          .caption!
                          .copyWith(color: AppColors.textGray),
                    ),
                  ),
                  Expanded(
                    flex: 2,
                    child: Text(
                      'Количество',
                      style: Theme.of(context)
                          .textTheme
                          .caption!
                          .copyWith(color: AppColors.textGray),
                    ),
                  ),
                  Expanded(
                    flex: 3,
                    child: Text(
                      'Баланс',
                      style: Theme.of(context)
                          .textTheme
                          .caption!
                          .copyWith(color: AppColors.textGray),
                      textAlign: TextAlign.end,
                    ),
                  )
                ],
              ),
              const Divider(
                color: AppColors.divider,
                height: 20,
                thickness: 1.5,
              ),
              Expanded(
                child: ListView.builder(
                    itemCount: data.length,
                    itemBuilder: (_, index) => Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Text(data[index].dayName,
                                style: data[index].isHighlight
                                    ? Theme.of(context).textTheme.headline4
                                    : Theme.of(context)
                                        .textTheme
                                        .headline4!
                                        .copyWith(color: AppColors.textGray)),
                            ListView.builder(
                                shrinkWrap: true,
                                itemCount: data[index].transactions.length,
                                itemBuilder: (__, i) => Padding(
                                      padding: const EdgeInsets.symmetric(
                                          vertical: 10),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Expanded(
                                            flex: 2,
                                            child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.start,
                                              children: [
                                                Container(
                                                  decoration: const BoxDecoration(
                                                      shape: BoxShape.circle,
                                                      gradient: AppColors
                                                          .backgroundButtonGradient),
                                                  height: 25,
                                                  width: 25,
                                                  child: Padding(
                                                    padding: EdgeInsets.all(5),
                                                    child: SvgPicture.asset(
                                                      'assets/images/gift.svg',
                                                      color:
                                                          AppColors.buttonBlue1,
                                                    ),
                                                  ),
                                                ),
                                                const SizedBox(
                                                  width: 12,
                                                ),
                                                Column(
                                                  mainAxisSize:
                                                      MainAxisSize.min,
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                    Text(
                                                      data[index]
                                                          .transactions[i]
                                                          .comment,
                                                      style: Theme.of(context)
                                                          .textTheme
                                                          .bodyText2,
                                                    ),
                                                    Text(
                                                      data[index]
                                                          .transactions[i]
                                                          .time,
                                                      style: Theme.of(context)
                                                          .textTheme
                                                          .caption!
                                                          .copyWith(
                                                              color: AppColors
                                                                  .textGray),
                                                    ),
                                                  ],
                                                )
                                              ],
                                            ),
                                          ),
                                          Expanded(
                                            flex: 2,
                                            child: data[index]
                                                    .transactions[i]
                                                    .result is BalanceChange
                                                ? Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment.start,
                                                    children: [
                                                      Container(
                                                        decoration:
                                                            const BoxDecoration(
                                                                shape: BoxShape
                                                                    .circle,
                                                                color: AppColors
                                                                    .buttonBlue2),
                                                        height: 25,
                                                        width: 25,
                                                      ),
                                                      const SizedBox(
                                                        width: 12,
                                                      ),
                                                      Text(
                                                        (data[index].transactions[i].result
                                                                        as BalanceChange)
                                                                    .moneyDetails >
                                                                0
                                                            ? '+${(data[index].transactions[i].result as BalanceChange).moneyDetails} ₽'
                                                            : '-${(data[index].transactions[i].result as BalanceChange).moneyDetails.abs()} ₽',
                                                        style: Theme.of(context)
                                                            .textTheme
                                                            .bodyText2,
                                                      )
                                                    ],
                                                  )
                                                : Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment.start,
                                                    children: [
                                                      Container(
                                                        decoration:
                                                            const BoxDecoration(
                                                                shape: BoxShape
                                                                    .circle,
                                                                color: Colors
                                                                    .black),
                                                        height: 25,
                                                        width: 25,
                                                      ),
                                                      const SizedBox(
                                                        width: 12,
                                                      ),
                                                      Text(
                                                        '→ ${(data[index].transactions[i].result as NftChange).nftName}',
                                                        style: Theme.of(context)
                                                            .textTheme
                                                            .bodyText2,
                                                      )
                                                    ],
                                                  ),
                                          ),
                                          Expanded(
                                            flex: 3,
                                            child: Row(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.center,
                                              mainAxisAlignment:
                                                  MainAxisAlignment.end,
                                              children: [
                                                Flexible(
                                                    child: Text(
                                                  '${spaceSeparateNumbers(data[index].transactions[i].lastBalance)} ₽',
                                                  style: Theme.of(context)
                                                      .textTheme
                                                      .bodyText2!
                                                      .copyWith(
                                                          color: AppColors
                                                              .textGray),
                                                  maxLines: 2,
                                                )),
                                                Flexible(
                                                    child: Text(
                                                  '→',
                                                  style: Theme.of(context)
                                                      .textTheme
                                                      .bodyText2!,
                                                  maxLines: 1,
                                                )),
                                                Flexible(
                                                    child: Text(
                                                  '${spaceSeparateNumbers(data[index].transactions[i].resultBalance)} ₽',
                                                  style: Theme.of(context)
                                                      .textTheme
                                                      .bodyText2,
                                                  maxLines: 2,
                                                ))
                                              ],
                                            ),
                                          )
                                        ],
                                      ),
                                    ))
                          ],
                        )),
              ),
            ],
          ),
        ));
  }
}
