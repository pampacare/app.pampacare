import 'package:flutter/material.dart';
import 'package:pampacare/app/pages/components/add_button.dart';
import 'package:pampacare/app/pages/components/option_button.dart';
import 'package:pampacare/app/pages/components/title_subtitle_component.dart';
import 'package:pampacare/app/shared/theme/app_icons.dart';
import 'package:pampacare/app/shared/theme/app_images.dart';

class TreatmentsPage extends StatefulWidget {
  const TreatmentsPage({Key? key}) : super(key: key);

  @override
  _TreatmentsPageState createState() => _TreatmentsPageState();
}

class _TreatmentsPageState extends State<TreatmentsPage> {
  @override
  Widget build(BuildContext context) {
    return 
    Scaffold(
    
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: ListView(
          shrinkWrap: false,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                TitleSubtitleComponent(
                    title: 'Quase lá, quais', subtitle: 'são os tratamentos ?'),
                    SizedBox(height: 70,),                
                Column(
                  children: [
                   
                   
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
