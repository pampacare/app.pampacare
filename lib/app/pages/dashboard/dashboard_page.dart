import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:pampacare/app/pages/components/default_button.dart';
import 'package:pampacare/app/pages/components/default_text_field.dart';
import 'package:pampacare/app/shared/theme/app_colors.dart';
import 'package:pampacare/app/shared/theme/app_icons.dart';
import 'package:pampacare/app/shared/theme/app_images.dart';
import 'package:pampacare/app/shared/utils/screen_size.dart';

class DashboardPage extends StatefulWidget {
  const DashboardPage({Key? key}) : super(key: key);

  @override
  _DashboardPageState createState() => _DashboardPageState();
}

class _DashboardPageState extends State<DashboardPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SizedBox(
          height: ScreenSize.screenHeightSize(context),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Olá',
                  style: TextStyle(color: AppColors.text, fontSize: 28)),
              Text('O que deseja fazer?',
                  style: TextStyle(
                      color: AppColors.text,
                      fontSize: 28,
                      fontWeight: FontWeight.w300)),
              SizedBox(height: 70),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  TextButton(
                    onPressed: () {},
                    child: Container(
                      height: MediaQuery.of(context).size.width / 2.8,
                      width: MediaQuery.of(context).size.width / 2.8,
                      decoration: const BoxDecoration(
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(30.0),
                          bottomLeft: Radius.circular(30.0),
                          bottomRight: Radius.circular(30.0),
                          topRight: Radius.circular(30.0), // FLUTTER BUG FIX
                        ),
                      ),
                      child: Container(
                        width: 157,
                        height: 186,
                        color: AppColors.purple,
                        child: Center(
                          child: RichText(
                            text: TextSpan(
                              children: [
                                WidgetSpan(
                                  child: SvgPicture.asset(
                                    AppIcons.dog,
                                  ),
                                ),
                                TextSpan(
                                  text: "\n\n",
                                  style: TextStyle(
                                      color: AppColors.white, fontSize: 20),
                                ),
                                TextSpan(
                                  text: "Consulta",
                                  style: TextStyle(
                                      color: AppColors.white, fontSize: 20),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(width: 20),
                  TextButton(
                    onPressed: () {},
                    child: Container(
                      height: MediaQuery.of(context).size.width / 2.8,
                      width: MediaQuery.of(context).size.width / 2.8,
                      decoration: const BoxDecoration(
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(30.0),
                          bottomLeft: Radius.circular(30.0),
                          bottomRight: Radius.circular(30.0),
                          topRight: Radius.circular(30.0), // FLUTTER BUG FIX
                        ),
                      ),
                      child: Container(
                        color: AppColors.primary70,
                        child: Center(
                          child: RichText(
                            text: TextSpan(
                              children: [
                                TextSpan(
                                  text: " ",
                                  style: TextStyle(
                                      color: AppColors.white, fontSize: 20),
                                ),
                                WidgetSpan(
                                  child: SvgPicture.asset(
                                    AppIcons.location,
                                  ),
                                ),
                                TextSpan(
                                  text: "\n\n",
                                  style: TextStyle(
                                      color: AppColors.white, fontSize: 20),
                                ),
                                TextSpan(
                                  text: "Áreas",
                                  style: TextStyle(
                                      color: AppColors.white, fontSize: 20),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  TextButton(
                    onPressed: () {},
                    child: Container(
                      decoration: const BoxDecoration(
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(30),
                          bottomLeft: Radius.circular(30),
                          bottomRight: Radius.circular(30),
                          topRight: Radius.circular(30), // FLUTTER BUG FIX
                        ),
                      ),
                      height: MediaQuery.of(context).size.width / 2.8,
                      width: MediaQuery.of(context).size.width / 2.8,
                      child: Container(
                        color: AppColors.blue,
                        child: Center(
                            child: RichText(
                          text: TextSpan(
                            children: [
                              TextSpan(
                                text: "  ",
                                style: TextStyle(
                                    color: AppColors.white, fontSize: 20),
                              ),
                              WidgetSpan(
                                child: SvgPicture.asset(
                                  AppIcons.character,
                                ),
                              ),
                              TextSpan(
                                text: "\n\n",
                                style: TextStyle(
                                    color: AppColors.white, fontSize: 20),
                              ),
                              TextSpan(
                                text: "Relatórios",
                                style: TextStyle(
                                    color: AppColors.white, fontSize: 20),
                              ),
                            ],
                          ),
                        )),
                      ),
                    ),
                  ),
                  SizedBox(width: 20),
                  TextButton(
                    onPressed: () {},
                    child: Container(
                      decoration: const BoxDecoration(
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(30),
                          bottomLeft: Radius.circular(30),
                          bottomRight: Radius.circular(30),
                          topRight: Radius.circular(30), // FLUTTER BUG FIX
                        ),
                      ),
                      height: MediaQuery.of(context).size.width / 2.8,
                      width: MediaQuery.of(context).size.width / 2.8,
                      child: Container(
                        color: AppColors.grey10,
                        child: Center(
                          child: RichText(
                            text: TextSpan(
                              children: [
                                TextSpan(
                                  text: " ",
                                  style: TextStyle(
                                      color: AppColors.white, fontSize: 20),
                                ),
                                WidgetSpan(
                                  child: SvgPicture.asset(
                                    AppIcons.door,
                                  ),
                                ),
                                TextSpan(
                                  text: "\n\n",
                                  style: TextStyle(
                                      color: AppColors.white, fontSize: 20),
                                ),
                                TextSpan(
                                  text: "     Sair",
                                  style: TextStyle(
                                      color: AppColors.text, fontSize: 20),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
