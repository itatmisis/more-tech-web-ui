import 'package:flutter/material.dart';
import 'package:more_tech/presentation/screens/widgets/balance_widget.dart';
import 'package:more_tech/presentation/screens/widgets/nft_items_widget.dart';
import 'package:more_tech/presentation/screens/widgets/profile_widget/profile_widget.dart';
import 'package:more_tech/presentation/screens/widgets/transaction_history_widget.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 24),
      child: Row(
        children: [
          Expanded(
            flex: 2,
            child: Column(
              children: [
                const SizedBox(
                  height: 150,
                  child: Profile(),
                ),
                const SizedBox(
                  height: 36,
                ),
                const SizedBox(
                  height: 100,
                  child: Balance(),
                ),
                const SizedBox(
                  height: 24,
                ),
                Expanded(
                  flex: 6,
                  child: TransactionHistory(
                    data: [
                      TransactionDay(
                          'Сегодня',
                          [
                            Transaction(
                                time: '14:02',
                                comment: 'Награда',
                                lastBalance: '496 939,12',
                                resultBalance: '497 939,12',
                                result: BalanceChange(100)),
                            Transaction(
                                time: '14:02',
                                comment: 'Награда',
                                lastBalance: '496 939,12',
                                resultBalance: '497 939,12',
                                result: BalanceChange(100))
                          ],
                          true),
                      TransactionDay(
                        'Вчера',
                        [
                          Transaction(
                              time: '14:02',
                              comment: 'Награда',
                              lastBalance: '496 939,12',
                              resultBalance: '497 939,12',
                              result: BalanceChange(100)),
                          Transaction(
                              time: '14:02',
                              comment: 'Награда',
                              lastBalance: '496 939,12',
                              resultBalance: '497 939,12',
                              result: NftChange('NFTname')),
                          Transaction(
                              time: '14:02',
                              comment: 'Награда',
                              lastBalance: '496 939,12',
                              resultBalance: '497 939,12',
                              result: BalanceChange(100))
                        ],)
                    ],
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(
            width: 24,
          ),
          Expanded(
            flex: 4,
            child: Column(
              children:  [
                Expanded(
                  flex: 1,
                  child: NFTItems(),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
