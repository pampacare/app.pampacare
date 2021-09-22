import 'package:flutter/material.dart';
import 'package:pampacare/app/pages/components/default_button.dart';
import 'package:pampacare/app/pages/components/default_text_field.dart';
import 'package:pampacare/app/pages/components/title_subtitle_component.dart';
import 'package:pampacare/app/pages/register_dog/components/check_gender_component.dart';
import 'package:pampacare/app/shared/utils/screen_size.dart';

class RegisterDogPage extends StatefulWidget {
  const RegisterDogPage({Key? key}) : super(key: key);

  @override
  _RegisterDogPageState createState() => _RegisterDogPageState();
}

class _RegisterDogPageState extends State<RegisterDogPage> {
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
                      title: "Para começar",
                      subtitle: "vamos preencher alguns dados"),
                  SizedBox(
                    height: 32,
                  ),
                  DefaultTextField(
                    withPadding: false,
                    hint: "Nome",
                  ),
                  SizedBox(
                    height: 16,
                  ),
                  DefaultTextField(
                    withPadding: false,
                    hint: "Raça",
                  ),
                  SizedBox(
                    height: 16,
                  ),
                  DefaultTextField(
                    withPadding: false,
                    hint: "Ano de nascimento",
                  ),
                  SizedBox(
                    height: 16,
                  ),
                  DefaultTextField(
                    withPadding: false,
                    hint: "Usa coleira",
                  ),
                  SizedBox(
                    height: 16,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      CheckGenderComponent(
                          title: "Macho", value: true, onChanged: () {}),
                      CheckGenderComponent(
                          title: "Fêmea", value: false, onChanged: () {}),
                    ],
                  ),
                  SizedBox(
                    height: 50,
                  ),
                  DefaultButton(onPressed: () {}, title: "Cadastrar")
                ]),
          )),
    );
  }
}
