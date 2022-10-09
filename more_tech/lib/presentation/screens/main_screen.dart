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

class MainScreen extends StatefulWidget {
  int current = 0;

  MainScreen({Key? key}) : super(key: key);

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  
  List panels = [HomePanel(), const ActivityPanel(),const Achievments()];
  
  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.only(top: 10),
        child: Column(
          children: [
            SizedBox(
              height: 60,
              child: Padding(
                padding: const EdgeInsets.only(left: 24),
                child: Topbar(
                  currentPage: widget.current,
                  onTap: (i) {
                    setState(() {
                      widget.current = i;
                    });
                  },
                ),
              )
            ),
            Expanded(
              child: AnimatedSwitcher(
                  transitionBuilder: (Widget child, Animation<double> animation) {
                    return FadeTransition(
                      opacity: animation,
                      child: child,
                    );
                  },
                  duration: const Duration(milliseconds: 200),
                  child: panels[widget.current]
              )
            )
          ],
        ));
  }
}
