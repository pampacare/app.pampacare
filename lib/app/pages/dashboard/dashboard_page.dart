import 'package:flutter/material.dart';
import 'package:pampacare/app/pages/dashboard/components/dash_button_component.dart';
import 'package:pampacare/app/shared/theme/app_colors.dart';
import 'package:pampacare/app/shared/theme/app_icons.dart';

class DashboardPage extends StatefulWidget {
  const DashboardPage({Key? key}) : super(key: key);

  @override
  _DashboardPageState createState() => _DashboardPageState();
}

class _DashboardPageState extends State<DashboardPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              SizedBox(),
              Column(
                children: [
                  Text('Olá',
                      style: TextStyle(color: AppColors.text, fontSize: 28)),
                  Text('O que deseja fazer?',
                      style: TextStyle(
                          color: AppColors.text,
                          fontSize: 28,
                          fontWeight: FontWeight.w300)),
                ],
              ),
              Wrap(spacing: 21, runSpacing: 21, children: <Widget>[
                DashButtonComponent(
                  color: Color(0xFFBA68C8),
                  text: 'Consultas',
                  illustration: AppIcons.dogDash,
                  onTap: () {
                    Navigator.pushNamed(context, '/historic');
                  },
                ),
                DashButtonComponent(
                  color: Color(0xFFE3576C),
                  text: 'Áreas',
                  illustration: AppIcons.location,
                  onTap: () {
                    Navigator.pushNamed(context, '/search');
                  },
                ),
                DashButtonComponent(
                  color: Color(0xFF94B5FF),
                  text: 'Relatórios',
                  illustration: AppIcons.character,
                  onTap: () {
                    Navigator.pushNamed(context, '/register-dog');
                  },
                ),
                DashButtonComponent(
                  color: Color(0xFFF5F5F5),
                  text: 'Sair',
                  textBlack: true,
                  illustration: AppIcons.door,
                  onTap: () {
                    Navigator.pushNamed(context, '/login');
                  },
                ),
              ]),
              SizedBox(),
            ]),
      ),
    );
  }
}
