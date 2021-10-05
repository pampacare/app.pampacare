import 'package:flutter/material.dart';
import 'package:pampacare/app/shared/theme/app_colors.dart';

class CheckGenderComponent extends StatelessWidget {
  final String title;
  final bool value;
  final void Function() onChanged;
  const CheckGenderComponent({
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
          child: Icon(value
              ? Icons.radio_button_checked_outlined
              : Icons.radio_button_unchecked_outlined),
        ),
        SizedBox(width: 10),
        Text(
          title,
          style: TextStyle(fontSize: 16, color: AppColors.hintText),
        )
      ],
    );
  }
}
