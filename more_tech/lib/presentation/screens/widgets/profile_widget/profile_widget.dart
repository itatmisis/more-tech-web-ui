import 'package:flutter/material.dart';
import 'package:more_tech/presentation/screens/widgets/profile_widget/level_indicator.dart';
import 'package:more_tech/presentation/theme/app_colors.dart';

class Profile extends StatelessWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          AspectRatio(
              aspectRatio: 1,
              child: Stack(
                children: [
                  Align(
                    alignment: Alignment.center,
                    child: Container(
                      decoration: const BoxDecoration(
                          color: Colors.yellow, shape: BoxShape.circle),
                      margin: EdgeInsets.all(3.5),
                    ),
                  ),
                  const Align(
                      alignment: Alignment.center,
                      child: SizedBox(
                        width: double.infinity,
                        height: double.infinity,
                        child: CustomCircularProgressIndicator(
                          value: 0.5,
                          strokeWidth: 7,
                          color: AppColors.buttonBlue2,
                        ),
                      )),
                  Align(
                    alignment: Alignment.bottomRight,
                    child: Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          color: AppColors.buttonBlue2),
                      height: 30,
                      width: 80,
                      child: Center(
                        child: Text('1230 ур.', style: Theme.of(context).textTheme.headline4),
                      ),
                    ),
                  )
                ],
              )),
          SizedBox(width: 30,),
          Expanded(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Ерошов Даниил', style: Theme.of(context).textTheme.headline1,),
                  Text('Сотрудник', style: Theme.of(context).textTheme.headline2!.copyWith(color: AppColors.textGray),)
                ],
              )
          )
        ],
      ),
    );
  }
}
