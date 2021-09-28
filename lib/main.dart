import 'package:flutter/material.dart';
import 'package:pampacare/app/pages/appointment/appointment_details_page.dart';
import 'package:pampacare/app/pages/login/login_page.dart';
import 'package:pampacare/app/pages/register_dog/register_dog_page.dart';
import 'package:pampacare/app/pages/splash/splash_page.dart';
import 'package:pampacare/app/shared/container/injection.dart';
import 'package:pampacare/app/shared/theme/app_colors.dart';

import 'app/pages/options/options_page.dart';

void main() {
  Injection().setup();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        backgroundColor: AppColors.white,
        primaryColor: AppColors.primary,
      ),
      initialRoute: '/splash',
      routes: {
        '/splash': (context) => SplashPage(),
        '/login': (context) => LoginPage(),
        '/options': (context) => OptionsPage(),
        '/appointment': (context) => AppointmentDetailsPage(),
        '/register-dog': (context) => RegisterDogPage(),
      },
    );
  }
}
