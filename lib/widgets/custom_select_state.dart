import 'package:flutter/material.dart';
import 'package:players_bank_redesign/shared/app_colors.dart';

class CustomSelectState extends StatelessWidget {
  final Widget child;
  final Color borderColor;
  final EdgeInsetsGeometry internalMargin;

  CustomSelectState({
    required this.child,
    this.borderColor = AppColors.orange,
    this.internalMargin = const EdgeInsets.all(10.0),
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(color: borderColor, width: 2.0),
        borderRadius: BorderRadius.zero,
      ),
      child: Padding(
        padding: internalMargin,
        child: child,
      ),
    );
  }
}
