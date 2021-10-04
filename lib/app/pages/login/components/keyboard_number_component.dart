import 'package:flutter/material.dart';

import 'package:pampacare/app/shared/theme/app_colors.dart';
import 'package:pampacare/app/shared/utils/screen_size.dart';

class KeyboardNumberComponent extends StatelessWidget {
  final int number;
  final void Function() onTap;
  const KeyboardNumberComponent({
    Key? key,
    required this.number,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: ScreenSize.screenWidthSize(context) * 0.2,
      width: ScreenSize.screenWidthSize(context) * 0.2,
      child: TextButton(
        onPressed: onTap,
        style: ButtonStyle(
            backgroundColor: MaterialStateProperty.resolveWith((states) {
              if (states.contains(MaterialState.pressed)) {
                return AppColors.primary;
              } else if (states.contains(MaterialState.disabled)) {
                return AppColors.white;
              }
            }),
            shape: MaterialStateProperty.all(CircleBorder(
                side: BorderSide(color: AppColors.primary, width: 1))),
            splashFactory: NoSplash.splashFactory,
            textStyle: MaterialStateProperty.resolveWith((states) {
              if (states.contains(MaterialState.pressed)) {
                return TextStyle(
                    fontSize: 36,
                    color: AppColors.white,
                    fontWeight: FontWeight.w300);
              } else if (states.contains(MaterialState.disabled)) {
                return TextStyle(
                    fontSize: 36,
                    color: AppColors.primary,
                    fontWeight: FontWeight.w300);
              } else {
                return TextStyle(
                    fontSize: 36,
                    color: AppColors.primary,
                    fontWeight: FontWeight.w300);
              }
            }),
            foregroundColor: MaterialStateProperty.resolveWith((states) {
              if (states.contains(MaterialState.pressed)) {
                return AppColors.white;
              } else {
                return AppColors.primary;
              }
            })),
        child: Text("$number"),
      ),
    );
  }
}
