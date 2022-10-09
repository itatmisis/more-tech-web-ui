import 'package:delayed_widget/delayed_widget.dart';
import 'package:flutter/material.dart';
import 'package:more_tech/presentation/screens/achievements_screen.dart';
import 'package:more_tech/presentation/screens/activity_panel.dart';
import 'package:more_tech/presentation/screens/widgets/balance_widget.dart';
import 'package:more_tech/presentation/screens/home_panel.dart';
import 'package:more_tech/presentation/screens/widgets/nft_items_widget.dart';
import 'package:more_tech/presentation/screens/widgets/profile_widget/profile_widget.dart';
import 'package:more_tech/presentation/screens/widgets/topbar.dart';
import 'package:more_tech/presentation/screens/widgets/transaction_history_widget.dart';
import 'package:provider/provider.dart';

class MainScreenModel extends ChangeNotifier {
  int _currentPage = 0;

  int get currentPage => _currentPage;

  set currentPage(int value) {
    _currentPage = value;
    notifyListeners();
  }
}

class MainScreen extends StatefulWidget {
  MainScreen({Key? key}) : super(key: key);

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  
  List panels = [HomePanel(), const ActivityPanel(),const Achievments()];
  
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<MainScreenModel>(
      create: (_) => MainScreenModel(),
      builder: (_, __) => ChangeNotifierProvider<HomePanelModel>(
        create: (_) => HomePanelModel(),
        builder: (_, __) => ChangeNotifierProvider<ActivityPanelModel>(
            create: (_) => ActivityPanelModel(),
          builder: (_, __) => Consumer<MainScreenModel>(
              builder: (_, model, __) => Padding(
                  padding: const EdgeInsets.only(top: 10),
                  child: Column(
                    children: [
                      SizedBox(
                          height: 60,
                          child: Padding(
                            padding: EdgeInsets.only(left: 24),
                            child: Topbar(
                              currentPage: model.currentPage,
                              onTap: (i) {
                                setState(() {
                                  model.currentPage = i;
                                });
                              },
                            ),
                          )
                      ),
                      Expanded(
                          child: AnimatedSwitcher(
                              transitionBuilder: (Widget child, Animation<double> animation) {
                                return FadeTransition(
                                  child: child,
                                  opacity: animation,
                                );
                              },
                              duration: const Duration(milliseconds: 200),
                              child: panels[model.currentPage]
                          )
                      )
                    ],
                  ))
          )
        )
      )
    );
  }
}
