import 'package:flutter/material.dart';

import 'package:pampacare/app/shared/models/symptoms.dart';
import 'package:pampacare/app/shared/theme/app_colors.dart';

class SymptomsCheckComponent extends StatelessWidget {
  final Symptom symptom;
  final void Function() onTap;
  final bool isChecked;
  const SymptomsCheckComponent(
      {Key? key,
      required this.symptom,
      this.isChecked = false,
      required this.onTap})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
          padding: EdgeInsets.symmetric(horizontal: 12, vertical: 11),
          decoration: BoxDecoration(
              border: Border.all(
                color: isChecked ? AppColors.primary : AppColors.hintText,
                width: 1,
              ),
              borderRadius: BorderRadius.circular(100),
              color: isChecked ? AppColors.primary : AppColors.white),
          child: Text(
            symptom.description,
            style: TextStyle(
              color: isChecked ? AppColors.white : AppColors.hintText,
              fontSize: 12,
            ),
          )),
    );
  }
}
