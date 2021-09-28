import 'package:flutter/material.dart';
import 'package:pampacare/app/pages/components/default_button.dart';
import 'package:pampacare/app/pages/components/default_text_field.dart';
import 'package:pampacare/app/pages/components/title_subtitle_component.dart';
import 'package:pampacare/app/pages/treatments/components/check_gender_component.dart';
import 'package:pampacare/app/shared/utils/screen_size.dart';

class TreatmentsPage extends StatefulWidget {
  const TreatmentsPage({Key? key}) : super(key: key);

  @override
  _TreatmentsPageState createState() => _TreatmentsPageState();
}

class _TreatmentsPageState extends State<TreatmentsPage> {
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
                      title: "Quase lá, quais",
                      subtitle: "são os tratamentos?"),
                  SizedBox(
                    height: 32,
                  ),
                 
                  SizedBox(
                    height: 64,
                  ),
                  
                   TitleSubtitleComponent(
                      title: "",
                      subtitle: "Testes realizados"),
                  SizedBox(
                    height: 32,
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      CheckGenderComponent(
                          title: "ELISA", value: true, onChanged: () {}),
                      CheckGenderComponent(
                          title: "TR DPP", value: false, onChanged: () {}),
                    ],
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
