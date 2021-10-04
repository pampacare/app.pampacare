import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
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
              onChanged: (value) {},
            ),
            SizedBox(
              height: 50,
            ),
            ZeroSearchComponent(
              subTitle: "Nenhum tutor encontrado\nDeseja cadastrar um ?",
              onPress: () {},
            )
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
}
