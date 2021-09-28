import 'package:flutter/material.dart';
import 'package:pampacare/app/pages/login/components/keyboard_number_component.dart';

class KeyboardComponent extends StatelessWidget {
  const KeyboardComponent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Wrap(
      spacing: 23,
      runSpacing: 34,
      children: List.generate(
          9,
          (index) => KeyboardNumberComponent(
                number: index,
              )),
    );
  }
}
