import 'package:flutter/material.dart';
import 'package:pampacare/app/shared/enum/symptoms_enum.dart';

class SymptomsComponent extends StatelessWidget {
  final SymptomsEnum symptom;
  const SymptomsComponent({
    Key? key,
    required this.symptom,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.symmetric(horizontal: 12, vertical: 11),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(100), color: symptom.color),
        child: Text(
          symptom.name,
          style: TextStyle(
            color: Colors.white,
            fontSize: 13,
          ),
        ));
  }
}
