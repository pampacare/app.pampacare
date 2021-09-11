import 'package:flutter/material.dart';
import 'package:pampacare/app/pages/components/default_button.dart';
import 'package:pampacare/app/pages/components/default_text_field.dart';
import 'package:pampacare/app/shared/theme/app_colors.dart';
import 'package:pampacare/app/shared/theme/app_icons.dart';
import 'package:pampacare/app/shared/theme/app_images.dart';
import 'package:pampacare/app/shared/utils/screen_size.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SizedBox(
          height: ScreenSize.screenHeightSize(context),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Text('Olá',
                  style: TextStyle(color: AppColors.text, fontSize: 28)),
              Text('faça login',
                  style: TextStyle(
                      color: AppColors.text,
                      fontSize: 28,
                      fontWeight: FontWeight.w300)),
              SizedBox(
                height: ScreenSize.screenWidthSize(context) * 0.2,
              ),
              DefaultTextField(hint: 'Usuário', icon: AppIcons.users),
              SizedBox(
                height: 24,
              ),
              DefaultTextField(
                hint: 'Senha',
                icon: AppIcons.unlock,
              ),
              SizedBox(
                height: ScreenSize.screenWidthSize(context) * 0.2,
              ),
              DefaultButton(onPressed: () {}, title: 'ENTRAR'),
              SizedBox(
                height: 34,
              ),
              Image.asset(
                AppImages.dogs,
                fit: BoxFit.contain,
              )
            ],
          ),
        ),
      ),
    );
  }
}
