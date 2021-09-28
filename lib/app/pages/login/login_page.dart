import 'package:flutter/material.dart';
import 'package:pampacare/app/pages/login/components/keyboard_component.dart';
import 'package:pampacare/app/pages/login/components/status_pin_code_component.dart';
import 'package:pampacare/app/shared/theme/app_colors.dart';
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
              Text('digite o PIN',
                  style: TextStyle(
                      color: AppColors.text,
                      fontSize: 28,
                      fontWeight: FontWeight.w300)),
              SizedBox(
                height: 36,
              ),
              StatusPinCodeComponent(lenght: 3),
              SizedBox(
                height: 37,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 32),
                child: KeyboardComponent(),
              ),
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
