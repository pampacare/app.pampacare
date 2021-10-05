import 'package:flutter/material.dart';

import 'package:pampacare/app/shared/models/symptoms.dart';
import 'package:pampacare/app/shared/theme/app_colors.dart';

class SymptomsCheckComponent extends StatelessWidget {
  final Symptom symptom;
  final bool isChecked;
  const SymptomsCheckComponent({
    Key? key,
    required this.symptom,
    this.isChecked = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.symmetric(horizontal: 12, vertical: 11),
        decoration: BoxDecoration(
            border: Border.all(
              color: AppColors.hintText,
              width: 1,
            ),
            borderRadius: BorderRadius.circular(100),
            color: AppColors.white),
        child: Text(
          symptom.description,
          style: TextStyle(
            color: AppColors.hintText,
            fontSize: 12,
          ),
        ));
  }
}
