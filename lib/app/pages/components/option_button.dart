import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:pampacare/app/shared/theme/app_colors.dart';
import 'package:pampacare/app/shared/utils/screen_size.dart';

class OptionButton extends StatelessWidget {
  final void Function() onPressed;
  final String title;
  final String? icon;
  const OptionButton({
    Key? key,
    required this.onPressed,
    required this.title,
    this.icon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextButton(
        onPressed: onPressed,
        style: ButtonStyle(
          fixedSize: MaterialStateProperty.all(
              Size(ScreenSize.screenWidthSize(context) - 0, 64)),
          shape: MaterialStateProperty.all(RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          )),
          backgroundColor:
              MaterialStateProperty.all<Color>(AppColors.optionButton),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              icon != null
                  ? SvgPicture.asset(
                      icon!,
                      fit: BoxFit.fitHeight,
                    )
                  : SizedBox(),
              Text(title, style: TextStyle(color: AppColors.black)),
              Icon(Icons.chevron_right, color: AppColors.black),
            ],
          ),
        ));
  }
}