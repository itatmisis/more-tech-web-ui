import 'package:delayed_widget/delayed_widget.dart';
import 'package:flutter/material.dart';
import 'package:more_tech/presentation/screens/widgets/balance_widget.dart';
import 'package:more_tech/presentation/screens/widgets/nft_items_widget.dart';
import 'package:more_tech/presentation/screens/widgets/profile_widget/profile_widget.dart';
import 'package:more_tech/presentation/screens/widgets/topbar.dart';
import 'package:more_tech/presentation/screens/widgets/transaction_history_widget.dart';

class MainScreen extends StatefulWidget {
  int current = 0;

  MainScreen({Key? key}) : super(key: key);

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 24),
        child: Column(
          children: [
            SizedBox(
              height: 60,
              child: Topbar(
                currentPage: widget.current,
                onTap: (i) {
                  setState(() {
                    widget.current = i;
                  });
                },
              ),
            ),
            Expanded(
              child: Row(
                children: [
                  Expanded(
                    flex: 2,
                    child: Column(
                      children: [
                        const SizedBox(
                          height: 30,
                        ),
                        SizedBox(
                          height: 150,
                          child: DelayedWidget(
                            delayDuration: const Duration(milliseconds: 100),
                            // Not required
                            animationDuration: const Duration(seconds: 1),
                            // Not required
                            animation: DelayedAnimations.SLIDE_FROM_BOTTOM,
                            // No
                            child: const Profile(),
                          ),
                        ),
                        const SizedBox(
                          height: 36,
                        ),
                        SizedBox(
                          height: 100,
                          child: DelayedWidget(
                              delayDuration: const Duration(milliseconds: 400),
                              // Not required
                              animationDuration: const Duration(seconds: 1),
                              // Not required
                              animation: DelayedAnimations.SLIDE_FROM_BOTTOM,
                              // No
                              child: const Balance()),
                        ),
                        const SizedBox(
                          height: 24,
                        ),
                        Expanded(
                            flex: 6,
                            child: DelayedWidget(
                              delayDuration: const Duration(milliseconds: 800),
                              // Not required
                              animationDuration: const Duration(seconds: 1),
                              // Not required
                              animation: DelayedAnimations.SLIDE_FROM_BOTTOM,
                              // No
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
                                    ],
                                  )
                                ],
                              ),
                            )),
                      ],
                    ),
                  ),
                  const SizedBox(
                    width: 24,
                  ),
                  Expanded(
                    flex: 4,
                    child: Column(
                      children: [
                        Expanded(
                            flex: 1,
                            child: DelayedWidget(
                              delayDuration: const Duration(milliseconds: 1200),
                              // Not required
                              animationDuration: const Duration(seconds: 1),
                              // Not required
                              animation: DelayedAnimations.SLIDE_FROM_BOTTOM,
                              // No
                              child: NFTItems(),
                            ))
                      ],
                    ),
                  ),
                ],
              ),
            )
          ],
        ));
  }
}
