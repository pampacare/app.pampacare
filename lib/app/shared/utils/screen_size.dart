import 'package:flutter/cupertino.dart';

class ScreenSize {
  static double screenWidthSize(BuildContext context) =>
      MediaQuery.of(context).size.width;
  static double screenHeightSize(BuildContext context) =>
      MediaQuery.of(context).size.height;
}
