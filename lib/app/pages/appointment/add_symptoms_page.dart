import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:pampacare/app/pages/appointment/components/symptoms_check_component.dart';
import 'package:pampacare/app/pages/appointment/controller/appointment_controller.dart';
import 'package:pampacare/app/pages/components/default_button.dart';
import 'package:pampacare/app/pages/components/title_subtitle_component.dart';
import 'package:pampacare/app/shared/theme/app_colors.dart';
import 'package:pampacare/app/shared/utils/screen_size.dart';

class AddSymptomsPage extends StatefulWidget {
  const AddSymptomsPage({Key? key}) : super(key: key);

  @override
  _AddSymptomsPageState createState() => _AddSymptomsPageState();
}

class _AddSymptomsPageState extends State<AddSymptomsPage> {
  final AppointmentController controller = GetIt.I<AppointmentController>();

  @override
  void initState() {
    super.initState();
    controller.getSymptoms().then((value) {
      setState(() {});
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: SizedBox(
        height: ScreenSize.screenHeightSize(context),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
                padding: const EdgeInsets.symmetric(horizontal: 30),
                alignment: Alignment.centerLeft,
                child: TitleSubtitleComponent(
                    title: "O que o ${controller.dog!.name}",
                    subtitle: "está sentido?")),
            SizedBox(
              height: 20,
            ),
            if (controller.symptomsList.isEmpty)
              CircularProgressIndicator(
                color: AppColors.primary,
              ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: Wrap(
                runSpacing: 8,
                spacing: 8,
                children: controller.symptomsList
                    .map((e) => SymptomsCheckComponent(
                          isChecked: controller.symptomsDog.contains(e),
                          symptom: e,
                          onTap: () {
                            setState(() {
                              if (controller.symptomsDog.contains(e)) {
                                controller.symptomsDog.remove(e);
                              } else {
                                controller.symptomsDog.add(e);
                              }
                            });
                          },
                        ))
                    .toList(),
              ),
            ),
            SizedBox(
              height: 50,
            ),
            Center(
                child: DefaultButton(
                    onPressed: () {
                      Navigator.pushNamed(context, '/tests');
                    },
                    title: "PRÓXIMO"))
          ],
        ),
      ),
    ));
  }
}
