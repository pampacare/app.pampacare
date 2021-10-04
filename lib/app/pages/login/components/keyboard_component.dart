import 'package:flutter/material.dart';

import 'package:pampacare/app/pages/login/components/keyboard_number_component.dart';

class KeyboardComponent extends StatelessWidget {
  final void Function(String) onTap;
  const KeyboardComponent({
    Key? key,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Wrap(
      spacing: 23,
      runSpacing: 34,
      children: List.generate(
          9,
          (index) => KeyboardNumberComponent(
                number: index + 1,
                onTap: () => onTap((index + 1).toString()),
              )),
    );
  }
}
