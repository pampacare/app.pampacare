import 'package:flutter/material.dart';
import 'package:pampacare/app/pages/login/components/circle_status_component.dart';

class StatusPinCodeComponent extends StatelessWidget {
  final int lenght;
  const StatusPinCodeComponent({Key? key, required this.lenght})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        CircleStatusComponent(
          status: true,
        ),
        SizedBox(
          width: 16,
        ),
        CircleStatusComponent(
          status: true,
        ),
        SizedBox(
          width: 16,
        ),
        CircleStatusComponent(
          status: false,
        ),
        SizedBox(
          width: 16,
        ),
        CircleStatusComponent(
          status: false,
        )
      ],
    );
  }
}
