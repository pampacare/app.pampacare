import 'package:flutter/material.dart';

import 'package:pampacare/app/shared/theme/app_colors.dart';

class HomeButtonComponent extends StatelessWidget {
  final Color color;
  final String text;
  final void Function() onTap;
  const HomeButtonComponent({
    Key? key,
    required this.color,
    required this.text,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        height: 185,
        width: MediaQuery.of(context).size.width * 0.40,
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(15),
        ),
        child: Center(
          child: Text(
            text,
            style: TextStyle(
              color: AppColors.white,
              fontSize: 20,
            ),
          ),
        ),
      ),
    );
  }
}
