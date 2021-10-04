import 'package:flutter/material.dart';
import 'package:pampacare/app/pages/components/add_button.dart';
import 'package:pampacare/app/pages/components/title_subtitle_component.dart';
import 'package:pampacare/app/shared/theme/app_images.dart';

class HistoricPage extends StatefulWidget {
  const HistoricPage({Key? key}) : super(key: key);

  @override
  _HistoricPageState createState() => _HistoricPageState();
}

class _HistoricPageState extends State<HistoricPage> {
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
                    title: 'Aqui está tudo sobre', subtitle: 'o Caramelo.'),
                SizedBox(
                  height: 70,
                ),
                Column(
                  children: [
                    AddButton(
                      onPressed: () {
                        Navigator.pushNamed(context, '/options');
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
