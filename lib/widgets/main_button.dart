import 'package:flutter/material.dart';

import '../login/sign_up/document_page.dart';
import '../shared/app_colors.dart';
import '../shared/constants.dart';

class MainButtonStyle extends StatelessWidget {
  MainButtonStyle({
    Key? key,
    required this.buttonText,
    required this.onPressed,
    required this.nextPage,
  }) : super(key: key);

  final String buttonText;
  final void Function() onPressed;
  final Widget? nextPage;

  void _onPressed(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => nextPage!),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 45.0,
      child: Material(
        color: AppColors.orange,
        elevation: 0,
        child: TextButton(
          onPressed: () => _onPressed(context),
          child: Text(
            buttonText,
            style: kMainButtonTextStyle,
          ),
        ),
      ),
    );
  }
}
