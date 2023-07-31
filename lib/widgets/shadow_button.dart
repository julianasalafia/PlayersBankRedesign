import 'package:flutter/material.dart';

import '../login/sign_up/document_page.dart';
import '../shared/app_colors.dart';
import '../shared/constants.dart';

class ShadowButton extends StatelessWidget {
  const ShadowButton({
    super.key,
    required this.buttonText,
    required this.onPressed,
    required this.nextPage,
  });

  final String buttonText;
  final void Function() onPressed;
  final Widget nextPage;

  void _onPressed(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => nextPage),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 45.0,
      child: TextButton(
        onPressed: () => _onPressed(context),
        style: buildButtonStyle(),
        child: Text(
          buttonText,
          style: kShadowButtonTextStyle,
        ),
      ),
    );
  }

  ButtonStyle buildButtonStyle() {
    return ButtonStyle(
      shape: MaterialStateProperty.all(
        RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(0),
        ),
      ),
      side: MaterialStateProperty.all(
        const BorderSide(width: 2, color: AppColors.orange),
      ),
    );
  }
}
