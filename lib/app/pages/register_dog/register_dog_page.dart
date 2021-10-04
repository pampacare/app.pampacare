import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:pampacare/app/pages/components/default_button.dart';
import 'package:pampacare/app/pages/components/default_text_field.dart';
import 'package:pampacare/app/pages/components/title_subtitle_component.dart';
import 'package:pampacare/app/pages/register_dog/components/check_collar_component.dart';
import 'package:pampacare/app/pages/register_dog/components/check_gender_component.dart';
import 'package:pampacare/app/pages/register_dog/controller/register_dog_controller.dart';
import 'package:pampacare/app/shared/enum/dog_gender_enum.dart';
import 'package:pampacare/app/shared/utils/screen_size.dart';

class RegisterDogPage extends StatefulWidget {
  const RegisterDogPage({Key? key}) : super(key: key);

  @override
  _RegisterDogPageState createState() => _RegisterDogPageState();
}

class _RegisterDogPageState extends State<RegisterDogPage> {
  final IRegisterDogController controller = GetIt.I<IRegisterDogController>();

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
                    height: 25,
                  ),
                  CheckCollarComponent(
                    title: "O animal usa coleira ?",
                    onChanged: () {
                      setState(() {
                        controller.setHasCollar(!controller.getHasCollar());
                      });
                    },
                    value: controller.getHasCollar(),
                  ),
                  SizedBox(
                    height: 25,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      CheckGenderComponent(
                          title: "Macho",
                          value: controller.getGender().isMale,
                          onChanged: () {
                            setState(() {
                              controller.setGender(DogGenderEnum.male);
                            });
                          }),
                      CheckGenderComponent(
                          title: "Fêmea",
                          value: !controller.getGender().isMale,
                          onChanged: () {
                            setState(() {
                              controller.setGender(DogGenderEnum.female);
                            });
                          }),
                    ],
                  ),
                  SizedBox(
                    height: 50,
                  ),
                  DefaultButton(
                      onPressed: () {
                        Navigator.pushNamed(context, '/search-owner');
                      },
                      title: "Cadastrar")
                ]),
          )),
    );
  }
}
