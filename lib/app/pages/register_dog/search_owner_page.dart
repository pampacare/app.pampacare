import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:http/http.dart' as http;

import 'package:pampacare/app/pages/components/debouncer.dart';
import 'package:pampacare/app/pages/components/title_subtitle_component.dart';
import 'package:pampacare/app/pages/components/zero_search_component.dart';
import 'package:pampacare/app/shared/theme/app_colors.dart';
import 'package:pampacare/app/shared/theme/app_icons.dart';

class SearchOwnerPage extends StatefulWidget {
  const SearchOwnerPage({Key? key}) : super(key: key);

  @override
  _SearchOwnerPageState createState() => _SearchOwnerPageState();
}

class _SearchOwnerPageState extends State<SearchOwnerPage> {
  final _debouncer = Debouncer(milliseconds: 1500);
  bool isLoading = false;
  List<Owners> owners = [];
  List<Owner> owner = [];

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(40.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 50,
            ),
            TitleSubtitleComponent(
                title: 'Certo, vamos achar',
                subtitle: 'um dono para esse cãozinho'),
            SizedBox(
              height: 50,
            ),
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
            SizedBox(
              height: 50,
            ),

            if (isLoading)
              Center(child: CircularProgressIndicator())
            else
              owners.isEmpty
                  ? ZeroSearchComponent(
                      subTitle:
                          "Nenhum tutor encontrado\nDeseja cadastrar um ?",
                      onPress: () {
                        Navigator.pushNamed(context, '/register-owner');
                      },
                    )
                  : Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: owners.map((owner) {
                        return Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            children: owner.owner.map(
                              (ownerOfList) {
                                return Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      owner.name,
                                      style: TextStyle(
                                          color: AppColors.primary,
                                          fontSize: 18),
                                    ),
                                    SizedBox(height: 10),
                                    Text(
                                      owner.street,
                                    ),
                                    SizedBox(height: 20),
                                    Divider(
                                      height: 1,
                                      color: AppColors.hintText,
                                    ),
                                  ],
                                );
                              },
                            ).toList(),
                          ),
                        );
                      }).toList()),

            // if (isLoading)
            //   Center(child: CircularProgressIndicator())
            //else
            // Column(
            //     children: dogs.map((dog) {
            //   return Padding(
            //     padding: const EdgeInsets.all(8.0),
            //     child: Column(
            //       crossAxisAlignment: CrossAxisAlignment.start,
            //       children: [
            //         Column(
            //           crossAxisAlignment: CrossAxisAlignment.start,
            //           children: dog.dog.map(
            //             (dogOfList) {
            //               return Text(
            //                 dogOfList.name,
            //                 style: TextStyle(
            //                     color: AppColors.primary, fontSize: 18),
            //               );
            //             },
            //           ).toList(),
            //         ),
            //         SizedBox(height: 10),
            //         Text(
            //           dog.street,
            //         ),
            //         SizedBox(height: 20),
            //       ],
            //     ),
            //   );
            // }).toList())
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: InkWell(
        onTap: () {},
        child: Text(
          "Esse cãozinho não tem dono",
          style: TextStyle(
            color: AppColors.primary,
            fontSize: 18,
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

    final uri = Uri.http('192.168.1.85:3333', '/owners', queryParameters);

    final response = await http.get(uri);
    if (response.statusCode == 200) {
      setState(() {
        isLoading = false;
        owners = Owners.fromArray(json.decode(response.body));
      });
    } else {
      setState(() {
        isLoading = false;
      });
      throw Exception('Failed to load');
    }
  }
}

class Owners {
  final String name;
  final String street;
  final List<Owner> owner;

  Owners({required this.name, required this.street, required this.owner});

  factory Owners.fromJson(Map<String, dynamic> json) {
    return Owners(
        name: json['name'],
        street: json['street'],
        owner: Owner.fromArray(json['dog']));
  }

  static List<Owners> fromArray(List<dynamic> list) =>
      list.map((element) => Owners.fromJson(element)).toList();

  Map<String, dynamic> toMap() {
    return {'name': name, 'street': street, 'owner': owner};
  }
}

class Owner {
  final String name;
  final int breed;

  Owner({required this.name, required this.breed});

  factory Owner.fromJson(Map<String, dynamic> json) {
    return Owner(name: json['name'], breed: json['breed_id']);
  }

  static List<Owner> fromArray(List<dynamic> list) =>
      list.map((element) => Owner.fromJson(element)).toList();

  Map<String, dynamic> toMap() {
    return {'name': name, 'breed_id': breed};
  }
}
