import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:http/http.dart' as http;
import 'package:pampacare/app/pages/components/debouncer.dart';

import 'package:pampacare/app/pages/components/title_subtitle_component.dart';
import 'package:pampacare/app/pages/components/zero_search_component.dart';
import 'package:pampacare/app/shared/theme/app_colors.dart';
import 'package:pampacare/app/shared/theme/app_icons.dart';

class SearchDogPage extends StatefulWidget {
  const SearchDogPage({Key? key}) : super(key: key);

  @override
  _SearchPageState createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchDogPage> {
  final _debouncer = Debouncer(milliseconds: 1500);
  bool isLoading = false;
  List<Dogs> dogs = [];
  List<Dog> dog = [];

  @override
  void initState() {
    super.initState();
    onSearchChanged('a');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(40.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 80),
              TitleSubtitleComponent(
                  title: 'Para começar,', subtitle: 'digite o endereço'),
              SizedBox(height: 80),
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
              SizedBox(height: 80),
              if (isLoading)
                Center(child: CircularProgressIndicator())
              else
                dogs.isEmpty
                    ? ZeroSearchComponent(
                        subTitle:
                            "Nenhum cão encontrado\nDeseja cadastrar um ?",
                        onPress: () {
                          Navigator.pushNamed(context, '/register-dog');
                        },
                      )
                    : Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: dogs.map((dog) {
                          return Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              children: dog.dog.map(
                                (dogOfList) {
                                  return GestureDetector(
                                    onTap: () {
                                      print(dogOfList.id);
                                    },
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          dogOfList.name,
                                          style: TextStyle(
                                              color: AppColors.primary,
                                              fontSize: 18),
                                        ),
                                        SizedBox(height: 10),
                                        Text(
                                          dog.street,
                                        ),
                                        SizedBox(height: 20),
                                        Divider(
                                          height: 1,
                                          color: AppColors.hintText,
                                        ),
                                      ],
                                    ),
                                  );
                                },
                              ).toList(),
                            ),
                          );
                        }).toList()),
            ],
          ),
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

    final uri = Uri.http(
        'api-gateway-pampacare.herokuapp.com', '/dogs/dogs', queryParameters);

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
      throw Exception('Failed to load');
    }
  }
}

class Dogs {
  final String street;
  final List<Dog> dog;

  Dogs({required this.street, required this.dog});

  factory Dogs.fromJson(Map<String, dynamic> json) {
    return Dogs(street: json['street'], dog: Dog.fromArray(json['dog']));
  }

  static List<Dogs> fromArray(List<dynamic> list) =>
      list.map((element) => Dogs.fromJson(element)).toList();

  Map<String, dynamic> toMap() {
    return {'street': street, 'dog': dog};
  }
}

class Dog {
  final String id;
  final String name;
  final int breed;

  Dog({required this.id, required this.name, required this.breed});

  factory Dog.fromJson(Map<String, dynamic> json) {
    return Dog(id: json['id'], name: json['name'], breed: json['breed_id']);
  }

  static List<Dog> fromArray(List<dynamic> list) =>
      list.map((element) => Dog.fromJson(element)).toList();

  Map<String, dynamic> toMap() {
    return {'id': id, 'name': name, 'breed_id': breed};
  }
}
