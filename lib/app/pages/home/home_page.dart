import 'package:flutter/material.dart';
import 'package:pampacare/app/pages/home/components/home_button_component.dart';
import 'package:pampacare/app/shared/theme/app_colors.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text('Olá',
                  style: TextStyle(color: AppColors.text, fontSize: 28)),
              Text('O que deseja fazer?',
                  style: TextStyle(
                      color: AppColors.text,
                      fontSize: 28,
                      fontWeight: FontWeight.w300)),
              SizedBox(
                height: 20,
              ),
              Wrap(spacing: 21, runSpacing: 21, children: <Widget>[
                HomeButtonComponent(
                  color: Color(0xFFBA68C8),
                  text: 'Consultas',
                  onTap: () {
                    Navigator.pushNamed(context, '/historic');
                  },
                ),
                HomeButtonComponent(
                  color: Color(0xFFE3576C),
                  text: 'Áreas',
                  onTap: () {
                    Navigator.pushNamed(context, '/search');
                  },
                ),
                HomeButtonComponent(
                  color: Color(0xFF94B5FF),
                  text: 'Relatórios',
                  onTap: () {
                    Navigator.pushNamed(context, '/search');
                  },
                ),
                HomeButtonComponent(
                  color: Color(0xFF000000),
                  text: 'Sair',
                  onTap: () {
                    Navigator.pushNamed(context, '/login');
                  },
                )
              ])
            ]),
      ),
    );
  }
}
