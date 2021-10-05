import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'package:pampacare/app/shared/theme/app_colors.dart';

class DashButtonComponent extends StatelessWidget {
  final Color color;
  final String text;
  final String illustration;
  final bool textBlack;
  final void Function() onTap;
  const DashButtonComponent(
      {Key? key,
      required this.color,
      required this.text,
      required this.onTap,
      this.textBlack = false,
      required this.illustration})
      : super(key: key);

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
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SvgPicture.asset(
                illustration,
                height: 60,
                width: 60,
                fit: BoxFit.fitHeight,
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                text,
                style: TextStyle(
                  color: !textBlack ? AppColors.white : AppColors.black,
                  fontSize: 18,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
