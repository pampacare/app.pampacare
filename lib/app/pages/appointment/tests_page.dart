import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:pampacare/app/pages/appointment/components/check_test_component.dart';
import 'package:pampacare/app/pages/appointment/controller/appointment_controller.dart';
import 'package:pampacare/app/pages/components/default_button.dart';
import 'package:pampacare/app/pages/components/default_text_field.dart';
import 'package:pampacare/app/pages/components/title_subtitle_component.dart';
import 'package:pampacare/app/shared/theme/app_colors.dart';

class TestsPage extends StatefulWidget {
  const TestsPage({Key? key}) : super(key: key);

  @override
  _TestsPageState createState() => _TestsPageState();
}

class _TestsPageState extends State<TestsPage> {
  final AppointmentController controller = GetIt.I<AppointmentController>();

  @override
  void initState() {
    super.initState();
    controller.getTests().then((value) {
      setState(() {});
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        padding: EdgeInsets.all(30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            const SizedBox(height: 24),
            TitleSubtitleComponent(
                title: "Quase lá, quais", subtitle: "são os tratamentos ?"),
            const SizedBox(height: 24),
            Text(
              "Testes realizados",
              style: TextStyle(color: AppColors.hintText, fontSize: 18),
            ),
            if (controller.testList.isEmpty)
              Center(
                child: CircularProgressIndicator(
                  color: AppColors.primary,
                ),
              ),
            Column(
                children: controller.testList
                    .map((test) => Padding(
                          padding: const EdgeInsets.only(top: 15),
                          child: CheckTestComponent(
                              title: test.name,
                              value: controller.testDog.contains(test),
                              onChanged: () {
                                setState(() {
                                  if (controller.testDog.contains(test)) {
                                    controller.testDog.remove(test);
                                  } else {
                                    controller.testDog.add(test);
                                  }
                                });
                              }),
                        ))
                    .toList()),
            const SizedBox(height: 30),
            Text(
              "Informe qual o tratamento para o ${controller.dog!.name}",
              style: TextStyle(color: AppColors.hintText, fontSize: 18),
            ),
            const SizedBox(height: 15),
            DefaultTextField(
              hint: "Tratamento",
              onChanged: (value) {
                controller.treatment = value;
              },
            ),
            const SizedBox(height: 15),
            Text(
              "Precisamos dessa informação",
              style: TextStyle(color: AppColors.hintText, fontSize: 18),
            ),
            const SizedBox(height: 15),
            CheckTestComponent(
                title: "Possui leshimaniose?",
                value: controller.hasLvc,
                onChanged: () {
                  setState(() {
                    controller.hasLvc = !controller.hasLvc;
                  });
                }),
            const SizedBox(height: 30),
            DefaultButton(onPressed: () {}, title: "CONCLUIR")
          ],
        ),
      ),
    );
  }
}
