import 'package:flutter/material.dart';
import 'package:more_tech/presentation/theme/app_colors.dart';

class LoginScreen extends StatelessWidget {
  String login = '', password = '';
  LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          gradient: LinearGradient(
              colors: [Color(0xFF101622), Color(0xFF11141B), Color(0xFF101622)],
              begin: Alignment.topRight,
              end: Alignment.bottomRight)),
      child: Center(
        child: Stack(
          children: [
            Align(
              alignment: Alignment.bottomRight,
              child: Image.asset(
                'assets/images/cat.png',
                height: MediaQuery.of(context).size.height / 4,
              ),
            ),
            Align(
              alignment: Alignment.center,
              child: Container(
                  decoration: BoxDecoration(
                      color: Color(0xFF11141B),
                      borderRadius: BorderRadius.circular(12),
                      border: Border.all(color: AppColors.textGray)),
                  height: 500,
                  width: 400,
                  padding: EdgeInsets.symmetric(horizontal: 24),
                  child: Center(
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text(
                          'Вход в ВТБ',
                          style: Theme.of(context).textTheme.headline1,
                        ),
                        SizedBox(
                          height: 40,
                        ),
                        TextField(
                            onChanged: (s) => login = s,
                            style: Theme.of(context)
                                .textTheme
                                .headline3
                                ?.copyWith(color: AppColors.textWhite),
                            decoration: InputDecoration(
                                contentPadding: const EdgeInsets.symmetric(
                                    vertical: 24.0, horizontal: 10),
                                filled: true,
                                fillColor: AppColors.containerColor1,
                                border: OutlineInputBorder(
                                    borderSide: BorderSide.none,
                                    borderRadius: BorderRadius.circular(9)),
                                hintText: 'Имя (user)',
                                hintStyle: Theme.of(context)
                                    .textTheme
                                    .caption
                                    ?.copyWith(color: AppColors.textGray))),
                        SizedBox(
                          height: 10,
                        ),
                        TextField(
                            onChanged: (s) => password = s,
                            style: Theme.of(context)
                                .textTheme
                                .headline3
                                ?.copyWith(color: AppColors.textWhite),
                            decoration: InputDecoration(
                                contentPadding: const EdgeInsets.symmetric(
                                    vertical: 24.0, horizontal: 10),
                                filled: true,
                                fillColor: AppColors.containerColor1,
                                border: OutlineInputBorder(
                                    borderSide: BorderSide.none,
                                    borderRadius: BorderRadius.circular(9)),
                                hintText: 'Пароль (123)',
                                hintStyle: Theme.of(context)
                                    .textTheme
                                    .caption
                                    ?.copyWith(color: AppColors.textGray))),
                        SizedBox(
                          height: 10,
                        ),
                        SizedBox(
                          width: double.infinity,
                          child: Text('Не помню пароль',
                              style: Theme.of(context)
                                  .textTheme
                                  .caption
                                  ?.copyWith(color: AppColors.buttonBlue1)),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Container(
                          margin: EdgeInsets.symmetric(horizontal: 24),
                          height: 60,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8),
                              gradient: AppColors.mainGradient),
                          child: ElevatedButton(
                            onPressed: () {
                              if (login == 'user' && password == '123') {
                                Navigator.of(context)
                                    .pushReplacementNamed('home');
                              }
                            },
                            style: ElevatedButton.styleFrom(
                                minimumSize: Size.zero,
                                padding: EdgeInsets.symmetric(vertical: 18),
                                backgroundColor: Colors.transparent,
                                shadowColor: Colors.transparent,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(8),
                                )),
                            child: SizedBox(
                              width: double.infinity,
                              child: Center(
                                child: Text(
                                  "Войти",
                                  style: Theme.of(context)
                                      .textTheme
                                      .bodyText1
                                      ?.copyWith(color: AppColors.textWhite),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  )),
            ),
          ],
        ),
      ),
    );
  }
}
