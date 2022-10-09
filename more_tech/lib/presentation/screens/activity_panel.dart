import 'package:delayed_widget/delayed_widget.dart';
import 'package:flutter/material.dart';
import 'package:more_tech/presentation/screens/widgets/levels_widget.dart';
import 'package:more_tech/presentation/screens/widgets/tasks_widget.dart';
import 'package:more_tech/presentation/theme/app_colors.dart';
import 'package:provider/provider.dart';

import 'widgets/blur_window.dart';

class ActivityPanelModel extends ChangeNotifier {
  bool _showModalMenu = false;

  bool get showModalMenu => _showModalMenu;

  set showModalMenu(bool value) {
    _showModalMenu = value;
    notifyListeners();
  }
}

class ActivityPanel extends StatelessWidget {
  const ActivityPanel({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 24),
      child: Row(
        children: [
          Expanded(
              flex: 1,
              child: Stack(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Ваша панель активности',
                        style: Theme.of(context).textTheme.headline1,
                      ),
                      const SizedBox(
                        height: 36,
                      ),
                      const Expanded(
                        child: Levels(),
                      )
                    ],
                  ),
                  Consumer<ActivityPanelModel>(
                      builder: (_, model, __) => AnimatedSwitcher(
                            transitionBuilder:
                                (Widget child, Animation<double> animation) {
                              return FadeTransition(
                                child: child,
                                opacity: animation,
                              );
                            },
                            duration: const Duration(milliseconds: 200),
                            child: model.showModalMenu
                                ? Center(
                                    child: BlurWindow(
                                        child: Padding(
                                    padding: const EdgeInsets.all(24),
                                    child: Column(
                                      children: [
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Text(
                                              'Список лидеров',
                                              style: Theme.of(context)
                                                  .textTheme
                                                  .headline3,
                                            ),
                                            GestureDetector(
                                              behavior: HitTestBehavior.opaque,
                                              onTap: () =>
                                                  model.showModalMenu = false,
                                              child: const Icon(
                                                Icons.close,
                                                color: AppColors.divider,
                                              ),
                                            ),
                                          ],
                                        ),
                                        const SizedBox(
                                          height: 40,
                                        ),
                                        Expanded(
                                          child: SingleChildScrollView(
                                            child: Image.asset(
                                                'assets/images/leaderboard.png'),
                                          ),
                                        )
                                      ],
                                    ),
                                  )))
                                : const SizedBox(),
                          ))
                ],
              )),
          const SizedBox(
            width: 24,
          ),
          Expanded(
            flex: 2,
            child: DelayedWidget(
              delayDuration: const Duration(milliseconds: 200),
              // Not required
              animationDuration: const Duration(seconds: 1),
              // Not required
              animation: DelayedAnimations.SLIDE_FROM_BOTTOM,
              // No
              child: const Tasks(),
            ),
          ),
        ],
      ),
    );
  }
}
