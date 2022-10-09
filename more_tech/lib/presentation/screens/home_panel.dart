import 'dart:ui';

import 'package:delayed_widget/delayed_widget.dart';
import 'package:flutter/material.dart';
import 'package:more_tech/presentation/screens/widgets/balance_widget.dart';
import 'package:more_tech/presentation/screens/widgets/blur_window.dart';
import 'package:more_tech/presentation/screens/widgets/nft_items_widget.dart';
import 'package:more_tech/presentation/screens/widgets/profile_widget/profile_widget.dart';
import 'package:more_tech/presentation/screens/widgets/topbar.dart';
import 'package:more_tech/presentation/screens/widgets/transaction_history_widget.dart';
import 'package:more_tech/presentation/theme/app_colors.dart';
import 'package:provider/provider.dart';

import 'widgets/home_panel_overlay/transaction_screen/transaction_screen.dart';

class HomePanelModel extends ChangeNotifier {
  bool _showModalMenu = false;

  double _money = 497939.12;

  List<TransactionDay> history = [
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
  ];
  int _nftCount = 20;

  int get nftCount => _nftCount;

  set nftCount(int value) {
    _nftCount = value;
    notifyListeners();
  }

  void updateHistory() {
    notifyListeners();
  }

  double get money => _money;

  set money(double value) {
    _money = value;
    notifyListeners();
  }

  bool get showModalMenu => _showModalMenu;

  set showModalMenu(bool value) {
    _showModalMenu = value;
    notifyListeners();
  }
}

class HomePanel extends StatefulWidget {
  HomePanel({Key? key}) : super(key: key);

  @override
  State<HomePanel> createState() => _HomePanelState();
}

class _HomePanelState extends State<HomePanel> {
  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 24),
        child: Row(
          children: [
            Expanded(
                flex: 2,
                child: Stack(
                  children: [
                    Column(
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
                              child: Consumer<HomePanelModel>(
                                  builder: (_, model, __) =>
                                      Balance(balance: model.money))),
                        ),
                        const SizedBox(
                          height: 24,
                        ),
                        Expanded(
                            flex: 6,
                            child: DelayedWidget(
                                delayDuration:
                                    const Duration(milliseconds: 800),
                                // Not required
                                animationDuration: const Duration(seconds: 1),
                                // Not required
                                animation: DelayedAnimations.SLIDE_FROM_BOTTOM,
                                // No
                                child: Consumer<HomePanelModel>(
                                  builder: (_, model, __) => TransactionHistory(
                                    data: model.history,
                                  ),
                                ))),
                      ],
                    ),
                    Consumer<HomePanelModel>(
                        builder: (_, model, __) => AnimatedSwitcher(
                              transitionBuilder:
                                  (Widget child, Animation<double> animation) {
                                return FadeTransition(
                                  child: child,
                                  opacity: animation,
                                );
                              },
                              duration: Duration(milliseconds: 200),
                              child: model.showModalMenu
                                  ? Center(
                                      child: BlurWindow(
                                          child: TransactionScreen(
                                      onClose: () => setState(() {
                                        model.showModalMenu = false;
                                      }),
                                    )))
                                  : SizedBox(),
                            ))
                  ],
                )),
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
        ));
  }
}
