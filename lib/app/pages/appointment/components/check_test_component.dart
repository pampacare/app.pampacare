import 'package:flutter/material.dart';
import 'package:pampacare/app/shared/theme/app_colors.dart';

class CheckTestComponent extends StatelessWidget {
  final String title;
  final bool value;
  final void Function() onChanged;
  const CheckTestComponent({
    Key? key,
    required this.title,
    required this.value,
    required this.onChanged,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        InkWell(
          onTap: onChanged,
          child: Container(
            height: 40,
            width: 40,
            decoration: BoxDecoration(
                border: Border.all(color: AppColors.primary, width: 1),
                borderRadius: BorderRadius.circular(5)),
            child: value ? Icon(Icons.check) : null,
          ),
        ),
        SizedBox(width: 20),
        Text(
          title,
          style: TextStyle(fontSize: 16, color: AppColors.hintText),
        )
      ],
    );
  }
}
