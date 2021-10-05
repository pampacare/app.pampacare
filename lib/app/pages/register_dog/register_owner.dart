import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:pampacare/app/pages/components/default_button.dart';
import 'package:pampacare/app/pages/components/default_text_field.dart';
import 'package:pampacare/app/pages/components/title_subtitle_component.dart';
import 'package:pampacare/app/pages/register_dog/controller/register_dog_controller.dart';
import 'package:pampacare/app/shared/utils/screen_size.dart';

class RegisterOwnerPage extends StatefulWidget {
  const RegisterOwnerPage({Key? key}) : super(key: key);

  @override
  _RegisterDogPageState createState() => _RegisterDogPageState();
}

class _RegisterDogPageState extends State<RegisterOwnerPage> {
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
                      title: "Estamos quase lá",
                      subtitle: "só falta cadastrar um tutor"),
                  SizedBox(
                    height: 32,
                  ),
                  DefaultTextField(
                    withPadding: false,
                    hint: "Nome",
                    onChanged: (value) => controller.setName(value),
                  ),
                  SizedBox(
                    height: 16,
                  ),
                  DefaultTextField(
                    withPadding: false,
                    hint: "CEP",
                    onChanged: (value) => controller.setBreed(value),
                  ),
                  SizedBox(
                    height: 16,
                  ),
                  DefaultTextField(
                    withPadding: false,
                    hint: "Número da residência",
                    onChanged: (value) => controller.setBirthday(value),
                  ),
                  SizedBox(
                    height: 25,
                  ),
                  Text(
                      'Inserimos o CEP automaticamente com base no seu local. Se não for este o local, fique a vontade para alterá-lo.',
                      style: TextStyle(color: Colors.grey, fontSize: 12)),
                  SizedBox(
                    height: 25,
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
