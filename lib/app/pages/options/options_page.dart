import 'package:flutter/material.dart';
import 'package:pampacare/app/pages/appointment/new_apointment_page.dart';

import 'package:pampacare/app/pages/components/option_button.dart';
import 'package:pampacare/app/pages/components/title_subtitle_component.dart';
import 'package:pampacare/app/pages/options/dead_dog_page.dart';
import 'package:pampacare/app/shared/models/dogs.dart';
import 'package:pampacare/app/shared/theme/app_icons.dart';

class OptionsPage extends StatefulWidget {
  final Dog dog;
  const OptionsPage({
    Key? key,
    required this.dog,
  }) : super(key: key);

  @override
  _OptionsPageState createState() => _OptionsPageState();
}

class _OptionsPageState extends State<OptionsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            TitleSubtitleComponent(
                title: 'Certo, agora', subtitle: 'selecione uma opção.'),
            Column(
              children: [
                OptionButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => NewAppointmentPage(
                                  dog: widget.dog,
                                )));
                  },
                  title: 'Cadastrar nova consulta',
                  icon: AppIcons.dog,
                ),
                SizedBox(height: 30),
                OptionButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => DeadDogPage(
                                    dog: widget.dog,
                                  )));
                    },
                    title: 'Declarar óbito do animal',
                    icon: AppIcons.rip),
              ],
            ),
            SizedBox(),
          ],
        ),
      ),
    );
  }
}
