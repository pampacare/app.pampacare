import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:pampacare/app/shared/theme/app_colors.dart';
import 'package:pampacare/app/shared/utils/screen_size.dart';

class AddButton extends StatelessWidget {
  final void Function() onPressed;
  final String title;
  final String? icon;
  const AddButton({
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
              MaterialStateProperty.all<Color>(AppColors.text),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
             Icon(Icons.add, color: Colors.white),
             SizedBox(),
              Text(title, style: TextStyle(color: AppColors.white),),
              
            ],
          ),
        ));
  }
}
