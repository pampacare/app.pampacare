import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:pampacare/app/pages/appointment/controller/appointment_controller.dart';

import 'package:pampacare/app/pages/components/add_button.dart';
import 'package:pampacare/app/pages/components/title_subtitle_component.dart';
import 'package:pampacare/app/pages/options/options_page.dart';
import 'package:pampacare/app/shared/models/dogs.dart';
import 'package:pampacare/app/shared/theme/app_images.dart';

class HistoricPage extends StatefulWidget {
  final Dog dog;
  const HistoricPage({
    Key? key,
    required this.dog,
  }) : super(key: key);

  @override
  _HistoricPageState createState() => _HistoricPageState();
}

class _HistoricPageState extends State<HistoricPage> {
  final AppointmentController controller = GetIt.I<AppointmentController>();

  @override
  void initState() {
    controller.dog = widget.dog;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: ListView(
          shrinkWrap: false,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                SizedBox(
                  height: 50,
                ),
                TitleSubtitleComponent(
                    title: 'Aqui está tudo sobre',
                    subtitle: 'o ${controller.dog!.name}.'),
                SizedBox(
                  height: 70,
                ),
                Column(
                  children: [
                    AddButton(
                      onPressed: () {
                        //print(widget.dog!.toMap());
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => OptionsPage(
                                      dog: widget.dog,
                                    )));
                      },
                      title: 'Adicionar nova consulta',
                    ),
                    SizedBox(height: 30),
                    // Row(children: [
                    //   OptionButton(
                    //     onPressed: () {
                    //       Navigator.pushNamed(context, '/options');
                    //     },
                    //     title: 'Consulta',
                    //   ),
                    // ]),
                  ],
                ),
                SizedBox(
                  height: 50,
                ),
                Image.asset(
                  AppImages.dog,
                  fit: BoxFit.contain,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
