enum DogGenderEnum { male, female }

extension DogGenderExt on DogGenderEnum {
  String get name {
    switch (this) {
      case DogGenderEnum.male:
        return 'Macho';
      case DogGenderEnum.female:
        return 'Fêmea';
      default:
        return 'Macho';
    }
  }

  static DogGenderEnum getByName(String name) {
    switch (name) {
      case 'Macho':
        return DogGenderEnum.male;
      case 'Fêmea':
        return DogGenderEnum.female;
      default:
        return DogGenderEnum.male;
    }
  }

  bool get isMale {
    return this == DogGenderEnum.male;
  }
}
