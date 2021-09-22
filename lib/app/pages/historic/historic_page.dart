import 'package:flutter/material.dart';
import 'package:pampacare/app/pages/components/add_button.dart';
import 'package:pampacare/app/pages/components/option_button.dart';
import 'package:pampacare/app/pages/components/title_subtitle_component.dart';
import 'package:pampacare/app/shared/theme/app_icons.dart';
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
                TitleSubtitleComponent(
                    title: 'Aqui está tudo sobre', subtitle: 'o Caramelo.'),
                    SizedBox(height: 70,),                
                Column(
                  children: [
                    AddButton(
                      onPressed: () {},
                      title: 'Adicionar nova consulta',
                    
                    ),
                    SizedBox(height: 30),
                  Row(
                      children: [
                    OptionButton(
                        onPressed: () {},
                        title: 'Cadastrar nova consulta',
                        ),
                        ]),
                  ],
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
