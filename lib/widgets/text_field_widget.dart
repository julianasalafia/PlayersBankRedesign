import 'package:flutter/material.dart';

import '../shared/app_colors.dart';
import '../shared/constants.dart';

class TextFieldWidget extends StatelessWidget {
  const TextFieldWidget({
    Key? key,
    required this.hintText,
  }) : super(key: key);

  final String hintText;

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        border: const OutlineInputBorder(
          borderRadius: BorderRadius.zero,
        ),
        focusedBorder: const OutlineInputBorder(
          borderRadius: BorderRadius.zero,
          borderSide: BorderSide(color: AppColors.orange, width: 2),
        ),
        enabledBorder: const OutlineInputBorder(
          borderRadius: BorderRadius.zero,
          borderSide: BorderSide(color: AppColors.orange, width: 2),
        ),
        hintText: hintText,
      ),
      style: kEditTextStyle,
    );
  }
}
