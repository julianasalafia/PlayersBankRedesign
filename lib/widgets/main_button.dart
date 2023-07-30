import 'package:flutter/material.dart';

import '../shared/app_colors.dart';
import '../shared/constants.dart';

class MainButtonStyle extends StatelessWidget {
  const MainButtonStyle({
    super.key,
    required this.buttonText,
  });

  final String buttonText;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 45.0,
      color: AppColors.orange,
      child: TextButton(
        onPressed: () {
          // to do
        },
        child: Text(
          buttonText,
          style: kMainButtonTextStyle,
        ),
      ),
    );
  }
}
