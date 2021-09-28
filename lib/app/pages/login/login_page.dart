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

class _LoginPageState extends State<LoginPage> with TickerProviderStateMixin {
  String pin = '';
  bool error = false;

  late final AnimationController _controllerError =
      AnimationController(vsync: this, duration: Duration(seconds: 2))
        ..repeat(max: 1);
  late Animation<Offset> _offsetAnimationError = Tween<Offset>(
    begin: Offset(0, 0),
    end: Offset(1.5, 0.0),
  ).animate(
    CurvedAnimation(
      parent: _controllerError,
      curve: Curves.easeIn,
    ),
  );

  @override
  void dispose() {
    super.dispose();
    _controllerError.dispose();
  }

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
              if (!error) StatusPinCodeComponent(lenght: pin.length),
              if (error)
                SlideTransition(
                  position: _offsetAnimationError,
                  child: Text('Pin incorreto :(',
                      style: TextStyle(
                          color: AppColors.primary,
                          fontSize: 18,
                          fontWeight: FontWeight.w300)),
                ),
              SizedBox(
                height: 37,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 32),
                child: KeyboardComponent(onTap: (value) async {
                  setState(() {
                    pin += value;
                  });
                  if (pin.length >= 4) {
                    if (pin == "6969") {
                      Navigator.pushReplacementNamed(context, '/options');
                    } else {
                      setState(() {
                        pin = '';
                        error = true;
                        _controllerError.repeat();
                      });
                      await Future.delayed(Duration(seconds: 2));
                      setState(() {
                        error = false;
                        _controllerError.reset();
                      });
                    }
                  }
                }),
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
