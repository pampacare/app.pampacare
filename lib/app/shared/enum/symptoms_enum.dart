import 'package:flutter/cupertino.dart';

enum SymptomsEnum {
  Desidatracao,
  Emagrecimento,
  Caquexia,
  PerdaDeApetite,
  LesoesCutaneas
}

extension SymptomsExt on SymptomsEnum {
  String get name {
    switch (this) {
      case SymptomsEnum.Desidatracao:
        return "Desidatração";
      case SymptomsEnum.Emagrecimento:
        return "Emagrecimento";
      case SymptomsEnum.Caquexia:
        return "Caquexia";
      case SymptomsEnum.PerdaDeApetite:
        return "Perda de apetite";
      case SymptomsEnum.LesoesCutaneas:
        return "Lesões cutâneas";
    }
  }

  Color get color {
    switch (this) {
      case SymptomsEnum.Desidatracao:
        return Color(0xFF577EE3);
      case SymptomsEnum.Emagrecimento:
        return Color(0xFFE3576C);
      case SymptomsEnum.Caquexia:
        return Color(0xFF263238);
      case SymptomsEnum.PerdaDeApetite:
        return Color(0xFFE3BC57);
      case SymptomsEnum.LesoesCutaneas:
        return Color(0xFF757575);
    }
  }
}
