import 'package:flutter/material.dart';
import 'package:pampacare/app/pages/login/login_page.dart';
import 'package:pampacare/app/pages/splash/splash_page.dart';
import 'package:pampacare/app/shared/container/injection.dart';
import 'package:pampacare/app/shared/theme/app_colors.dart';

import 'app/pages/dashboard/dashboard_page.dart';

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
      initialRoute: '/dashboard',
      routes: {
        '/splash': (context) => SplashPage(),
        '/dashboard': (context) => DashboardPage(),
        '/login': (context) => LoginPage(),
      },
    );
  }
}
