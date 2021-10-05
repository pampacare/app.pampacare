import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'package:pampacare/app/pages/components/default_button.dart';
import 'package:pampacare/app/shared/theme/app_colors.dart';
import 'package:pampacare/app/shared/theme/app_icons.dart';

class ZeroSearchComponent extends StatelessWidget {
  final String subTitle;
  final void Function() onPress;
  const ZeroSearchComponent({
    Key? key,
    required this.subTitle,
    required this.onPress,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Center(
          child: SvgPicture.asset(
            AppIcons.dogSearch,
            width: 129,
            height: 90,
          ),
        ),
        SizedBox(
          height: 20,
        ),
        Text(
          "Ops",
          style: TextStyle(
            fontSize: 28,
            fontWeight: FontWeight.w400,
            color: AppColors.primary,
          ),
        ),
        Text(
          subTitle,
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.w300,
            color: AppColors.hintText,
          ),
        ),
        SizedBox(
          height: 40,
        ),
        DefaultButton(onPressed: onPress, title: "Cadastrar agora")
      ],
    );
  }
}
