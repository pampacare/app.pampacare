import 'package:flutter/material.dart';

import 'package:pampacare/app/shared/theme/app_colors.dart';

class CircleStatusComponent extends StatelessWidget {
  final bool status;
  const CircleStatusComponent({
    Key? key,
    required this.status,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 17,
      height: 17,
      decoration: BoxDecoration(
        color: status ? AppColors.primary : AppColors.grey,
        shape: BoxShape.circle,
      ),
    );
  }
}
