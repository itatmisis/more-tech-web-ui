import 'package:flutter/material.dart';
import 'package:more_tech/presentation/screens/activity_panel.dart';
import 'package:more_tech/presentation/theme/app_colors.dart';
import 'package:provider/provider.dart';

class Levels extends StatelessWidget {
  const Levels({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image.asset('assets/images/animation.png'),
        Align(
          alignment: Alignment.bottomRight,
          child: Padding(
              padding: EdgeInsets.all(24),
              child: Consumer<ActivityPanelModel>(
                builder: (_, model, __) => ElevatedButton(
                  onPressed: () => model.showModalMenu = true,
                  style: ElevatedButton.styleFrom(
                      minimumSize: Size.zero,
                      padding:
                          EdgeInsets.symmetric(horizontal: 20, vertical: 18),
                      backgroundColor: AppColors.buttonGray,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8),
                      )),
                  child: Text(
                    "Список лидеров",
                    style: Theme.of(context)
                        .textTheme
                        .bodyText2
                        ?.copyWith(color: AppColors.textWhite),
                  ),
                ),
              )),
        )
      ],
    );
  }
}
