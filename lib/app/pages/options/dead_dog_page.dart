import 'package:flutter/material.dart';
import 'package:pampacare/app/pages/components/default_button.dart';
import 'package:pampacare/app/pages/components/default_text_field.dart';

import 'package:pampacare/app/pages/components/title_subtitle_component.dart';
import 'package:pampacare/app/shared/models/dogs.dart';
import 'package:pampacare/app/shared/theme/app_icons.dart';
import 'package:pampacare/app/shared/theme/app_images.dart';
import 'package:pampacare/app/shared/utils/screen_size.dart';

class DeadDogPage extends StatefulWidget {
  final Dog dog;
  const DeadDogPage({
    Key? key,
    required this.dog,
  }) : super(key: key);

  @override
  _DeadDogPageState createState() => _DeadDogPageState();
}

class _DeadDogPageState extends State<DeadDogPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SizedBox(
          height: ScreenSize.screenHeightSize(context),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TitleSubtitleComponent(
                  title: "Declarar óbito do animal", subtitle: ""),
              DefaultTextField(
                icon: AppIcons.calendar,
                hint: "Data do óbito",
              ),
              Image.asset(
                AppImages.dead,
                height: 263,
                width: 247,
              ),
              SizedBox(height: 20),
              Text(
                "R.I.P\nSentimos muito!",
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 50),
              DefaultButton(
                  onPressed: () {
                    Navigator.pop(context);
                    Navigator.pop(context);
                  },
                  title: "SALVAR")
            ],
          ),
        ),
      ),
    );
  }
}
