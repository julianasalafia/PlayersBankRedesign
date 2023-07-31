import 'package:flutter/material.dart';

import '../shared/app_colors.dart';

class GoBackButton extends StatelessWidget {
  const GoBackButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Icon(
      Icons.chevron_left,
      color: AppColors.orange,
    );
  }
}
