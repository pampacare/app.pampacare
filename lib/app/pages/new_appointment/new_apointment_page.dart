import 'package:flutter/material.dart';
import 'package:pampacare/app/pages/components/default_button.dart';
import 'package:pampacare/app/pages/components/title_subtitle_component.dart';
import 'package:pampacare/app/shared/utils/screen_size.dart';
import 'package:pampacare/app/shared/theme/app_images.dart';
import 'package:pampacare/app/pages/components/default_text_field.dart';

class NewAppointmentPage extends StatefulWidget {
  const NewAppointmentPage({Key? key}) : super(key: key);

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
                    hint: "Data da consulta",
                  ),
                  SizedBox(
                    height: 16,
                  ),
                  DefaultTextField(
                    withPadding: false,
                    hint: "Observações (opcional)",
                  ),
                  SizedBox(
                    height: 25,
                  ),
                  SizedBox(
                    height: 50,
                  ),
                  DefaultButton(onPressed: () {}, title: "Concluir")
                ]),
          )),
    );
  }
}
