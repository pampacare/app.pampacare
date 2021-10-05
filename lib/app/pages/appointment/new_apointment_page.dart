import 'package:flutter/material.dart';
import 'package:pampacare/app/pages/appointment/add_symptoms_page.dart';

import 'package:pampacare/app/pages/components/default_button.dart';
import 'package:pampacare/app/pages/components/default_text_field.dart';
import 'package:pampacare/app/pages/components/title_subtitle_component.dart';
import 'package:pampacare/app/shared/models/dogs.dart';
import 'package:pampacare/app/shared/theme/app_icons.dart';
import 'package:pampacare/app/shared/theme/app_images.dart';
import 'package:pampacare/app/shared/utils/screen_size.dart';

class NewAppointmentPage extends StatefulWidget {
  final Dog dog;
  const NewAppointmentPage({
    Key? key,
    required this.dog,
  }) : super(key: key);

  @override
  _NewAppointmentPageState createState() => _NewAppointmentPageState();
}

class _NewAppointmentPageState extends State<NewAppointmentPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
          padding: EdgeInsets.symmetric(horizontal: 30),
          child: SizedBox(
            height: ScreenSize.screenHeightSize(context),
            child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  TitleSubtitleComponent(
                      title: "Nova consulta",
                      subtitle: "Precisamos de alguns dados."),
                  SizedBox(
                    height: 32,
                  ),
                  SizedBox(
                    height: 64,
                  ),
                  Image.asset(
                    AppImages.dogPink,
                    fit: BoxFit.contain,
                  ),
                  SizedBox(
                    height: 16,
                  ),
                  DefaultTextField(
                    withPadding: false,
                    icon: AppIcons.calendar,
                    hint: "Data da consulta",
                  ),
                  SizedBox(
                    height: 16,
                  ),
                  DefaultTextField(
                    withPadding: false,
                    icon: AppIcons.users,
                    hint: "Observações (opcional)",
                  ),
                  SizedBox(
                    height: 25,
                  ),
                  SizedBox(
                    height: 50,
                  ),
                  DefaultButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => AddSymptomsPage()));
                      },
                      title: "PRÓXIMO")
                ]),
          )),
    );
  }
}
