import 'package:flutter/material.dart';
import 'package:pampacare/app/pages/appointment/components/symptoms_component.dart';
import 'package:pampacare/app/pages/components/title_subtitle_component.dart';
import 'package:pampacare/app/shared/enum/symptoms_enum.dart';
import 'package:pampacare/app/shared/theme/app_colors.dart';

class AppointmentDetailsPage extends StatefulWidget {
  const AppointmentDetailsPage({Key? key}) : super(key: key);

  @override
  _AppointmentDetailsPageState createState() => _AppointmentDetailsPageState();
}

class _AppointmentDetailsPageState extends State<AppointmentDetailsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        padding: EdgeInsets.only(
          top: 80,
          left: 30,
          right: 30,
        ),
        child: Column(
          children: [
            TitleSubtitleComponent(
                title: "Detalhes da consulta", subtitle: '11/05/2021'),
            SizedBox(
              height: 43,
            ),
            Text("Sintomas",
                style: TextStyle(color: AppColors.black, fontSize: 28)),
            SizedBox(
              height: 28,
            ),
            Wrap(
              spacing: 8,
              runSpacing: 15,
              children: [
                SymptomsComponent(symptom: SymptomsEnum.Desidatracao),
                SymptomsComponent(symptom: SymptomsEnum.Emagrecimento),
                SymptomsComponent(symptom: SymptomsEnum.Caquexia),
                SymptomsComponent(symptom: SymptomsEnum.PerdaDeApetite),
                SymptomsComponent(symptom: SymptomsEnum.LesoesCutaneas),
              ],
            ),
            SizedBox(
              height: 69,
            ),
            Text("Tratamento",
                style: TextStyle(color: AppColors.black, fontSize: 28)),
            SizedBox(
              height: 15,
            ),
            Text("Aplicado Anfotericina B lipossomal",
                style: TextStyle(
                    color: AppColors.black,
                    fontWeight: FontWeight.w300,
                    fontSize: 16)),
            SizedBox(
              height: 65,
            ),
            Text("Amostra",
                style: TextStyle(color: AppColors.black, fontSize: 28)),
            SizedBox(
              height: 15,
            ),
            Text("Numero: 246",
                style: TextStyle(
                    color: AppColors.black,
                    fontWeight: FontWeight.w300,
                    fontSize: 16)),
            SizedBox(
              height: 65,
            ),
            Text("Observações",
                style: TextStyle(color: AppColors.black, fontSize: 28)),
            SizedBox(
              height: 15,
            ),
            Text("Animal estava nervoso no dia do exame",
                style: TextStyle(
                    color: AppColors.black,
                    fontWeight: FontWeight.w300,
                    fontSize: 16)),
            SizedBox(
              height: 65,
            ),
          ],
          crossAxisAlignment: CrossAxisAlignment.start,
        ),
      ),
    );
  }
}
