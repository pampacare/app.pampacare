import 'package:flutter/material.dart';
import 'package:pampacare/app/shared/theme/app_colors.dart';
import 'package:pampacare/app/shared/utils/screen_size.dart';

class DefaultButton extends StatelessWidget {
  final void Function() onPressed;
  final String title;
  const DefaultButton({
    Key? key,
    required this.onPressed,
    required this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextButton(
        onPressed: onPressed,
        style: ButtonStyle(
          fixedSize: MaterialStateProperty.all(
              Size(ScreenSize.screenWidthSize(context) - 60, 64)),
          shape: MaterialStateProperty.all(RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          )),
          backgroundColor: MaterialStateProperty.all<Color>(AppColors.primary),
        ),
        child: Text(title, style: TextStyle(color: AppColors.white)));
  }
}
