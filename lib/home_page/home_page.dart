import 'package:flutter/material.dart';
import 'package:players_bank_redesign/shared/app_colors.dart';
import 'package:players_bank_redesign/shared/constants.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const Text(
            'HOME',
            style: kTitleTextStyle,
          ),
          Text(
            'TO BE DESIGNED',
            style: kTitleTextStyle.copyWith(color: AppColors.orange),
          )
        ],
      )),
    );
  }
}
