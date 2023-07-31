import 'package:flutter/material.dart';

import '../login/sign_up/document_page.dart';
import '../shared/app_colors.dart';
import '../shared/constants.dart';

class MainButtonStyle extends StatelessWidget {
  MainButtonStyle({
    Key? key,
    required this.buttonText,
    required this.onPressed,
  }) : super(key: key);

  final String buttonText;
  final void Function() onPressed;

  void _onPressed(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => DocumentPage()),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 45.0,
      color: AppColors.orange,
      child: TextButton(
        onPressed: () => _onPressed(context),
        child: Text(
          buttonText,
          style: kMainButtonTextStyle,
        ),
      ),
    );
  }
}
