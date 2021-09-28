import 'dart:async';
import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:http/http.dart' as http;
import 'package:pampacare/app/pages/components/debouncer.dart';

import 'package:pampacare/app/pages/components/title_subtitle_component.dart';
import 'package:pampacare/app/shared/theme/app_colors.dart';
import 'package:pampacare/app/shared/theme/app_icons.dart';

class SearchPage extends StatefulWidget {
  const SearchPage({Key? key}) : super(key: key);

  @override
  _SearchPageState createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  final _debouncer = Debouncer(milliseconds: 1500);
  bool isLoading = false;
  List<Dogs> dogs = [];

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(40.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TitleSubtitleComponent(
                title: 'Para começar,', subtitle: 'digite o endereço'),
            TextFormField(
              decoration: InputDecoration(
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(100))),
                hintText: 'Endereço',
                filled: true,
                fillColor: AppColors.textField,
                prefixIcon: SvgPicture.asset(
                  AppIcons.search,
                  height: 50,
                  width: 50,
                  fit: BoxFit.scaleDown,
                ),
              ),
              onChanged: (value) =>
                  _debouncer.run(() => onSearchChanged(value)),
            ),
            SizedBox(),
            if (isLoading)
              CircularProgressIndicator()
            else
              Column(
                  children: dogs.map((dog) {
                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(dog.street),
                );
              }).toList())
          ],
        ),
      ),
    );
  }

  onSearchChanged(String query) async {
    setState(() {
      isLoading = true;
    });
    final Map<String, String> queryParameters = {
      'street': query,
    };

    final uri = Uri.http('192.168.1.85:3000', '/dogs/dogs', queryParameters);

    final response = await http.get(uri);
    if (response.statusCode == 200) {
      setState(() {
        isLoading = false;
        dogs = Dogs.fromArray(json.decode(response.body));
      });
    } else {
      setState(() {
        isLoading = false;
      });
      throw Exception('Failed to load album');
    }
  }
}

class Dogs {
  final String street;

  Dogs({required this.street});

  factory Dogs.fromJson(Map<String, dynamic> json) {
    return Dogs(
      street: json['street'],
    );
  }

  static List<Dogs> fromArray(List<dynamic> list) =>
      list.map((element) => Dogs.fromJson(element)).toList();

  Map<String, dynamic> toMap() {
    return {
      'street': street,
    };
  }
}
