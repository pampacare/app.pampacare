import 'package:flutter/material.dart';

import 'package:pampacare/app/shared/theme/app_colors.dart';

class TitleSubtitleComponent extends StatelessWidget {
  final String title;
  final String subtitle;
  const TitleSubtitleComponent({
    Key? key,
    required this.title,
    required this.subtitle,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(title, style: TextStyle(color: AppColors.primary, fontSize: 28)),
        Text(subtitle,
            style: TextStyle(
                color: AppColors.text,
                fontSize: 28,
                fontWeight: FontWeight.w300)),
      ],
    );
  }
}
