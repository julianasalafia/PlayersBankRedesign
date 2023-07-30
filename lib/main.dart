import 'package:flutter/material.dart';
import 'package:players_bank_redesign/shared/app_colors.dart';

void main() {
  runApp(const LoginPage());
}

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
        primaryColor: AppColors.white,
        scaffoldBackgroundColor: AppColors.backgroundColor,
      ),
      home: Scaffold(
        body: Padding(
          padding: const EdgeInsets.fromLTRB(15, 45, 15, 15),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Column(
                children: [
                  SizedBox(
                    height: 50,
                    child: Image.asset(
                      'assets/images/pb_logo.png',
                      fit: BoxFit.scaleDown,
                    ),
                  ),
                  SizedBox(height: 10.0),
                ],
              ),
              Center(
                child: Column(
                  children: [
                    Text(
                      'O BANCO QUE',
                      style: TextStyle(
                        fontFamily: 'Barracuda',
                        fontSize: 35.0,
                        color: AppColors.white,
                      ),
                    ),
                    Text(
                      'JOGA JUNTO',
                      style: TextStyle(
                        fontFamily: 'Barracuda',
                        fontSize: 35.0,
                        color: AppColors.orange,
                      ),
                    ),
                    SizedBox(
                      child: Image.asset(
                        'assets/images/controle.png',
                        fit: BoxFit.scaleDown,
                      ),
                    ),
                  ],
                ),
              ),
              Center(
                child: Column(
                  children: [
                    Row(
                      children: [
                        Expanded(
                          child: Container(
                            height: 45.0,
                            color: AppColors.orange,
                            child: TextButton(
                                onPressed: () {},
                                child: Text(
                                  'ENTRAR',
                                  style: TextStyle(
                                    fontFamily: 'Barracuda',
                                    fontSize: 16.0,
                                    color: AppColors.backgroundColor,
                                  ),
                                )),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 10.0),
                    Row(
                      children: [
                        Expanded(
                            child: Container(
                          height: 45.0,
                          child: TextButton(
                              onPressed: () {},
                              child: Text(
                                'QUERO MINHA CONTA',
                                style: TextStyle(
                                  fontFamily: 'Barracuda',
                                  fontSize: 16.0,
                                  color: AppColors.orange,
                                ),
                              ),
                              style: ButtonStyle(
                                shape: MaterialStateProperty.all(
                                  RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(0),
                                  ),
                                ),
                                side: MaterialStateProperty.all(
                                  BorderSide(width: 2, color: AppColors.orange),
                                ),
                              )),
                        )),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
