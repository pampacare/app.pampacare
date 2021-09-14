import 'package:flutter/material.dart';
import 'package:pampacare/app/pages/components/option_button.dart';
import 'package:pampacare/app/shared/theme/app_colors.dart';
import 'package:pampacare/app/shared/theme/app_icons.dart';

class OptionsPage extends StatefulWidget {
  const OptionsPage({Key? key}) : super(key: key);

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
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Certo, agora',
                    style: TextStyle(color: AppColors.primary, fontSize: 28)),
                Text('selecione uma opção.',
                    style: TextStyle(
                        color: AppColors.text,
                        fontSize: 28,
                        fontWeight: FontWeight.w300)),
              ],
            ),
            Column(
              children: [
                OptionButton(
                  onPressed: () {},
                  title: 'Cadastrar nova consulta',
                  icon: AppIcons.dog,
                ),
                SizedBox(height: 30),
                OptionButton(
                    onPressed: () {},
                    title: 'Cadastrar nova consulta',
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