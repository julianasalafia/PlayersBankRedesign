import 'package:flutter/material.dart';

import '../shared/app_colors.dart';
import '../shared/constants.dart';

class ShadowButton extends StatelessWidget {
  const ShadowButton({
    super.key,
    required this.buttonText,
  });

  final String buttonText;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 45.0,
      child: TextButton(
        onPressed: () {
          // to do
        },
        style: ButtonStyle(
          shape: MaterialStateProperty.all(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(0),
            ),
          ),
          side: MaterialStateProperty.all(
            const BorderSide(width: 2, color: AppColors.orange),
          ),
        ),
        child: Text(
          buttonText,
          style: kShadowButtonTextStyle,
        ),
      ),
    );
  }
}
