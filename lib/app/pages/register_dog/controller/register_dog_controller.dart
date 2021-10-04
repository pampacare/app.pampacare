import 'package:pampacare/app/shared/enum/dog_gender_enum.dart';

abstract class IRegisterDogController {
  setName(String value);
  setBreed(String value);
  setBirthday(String value);
  setGender(DogGenderEnum value);
  setHasCollar(bool value);
  String getName();
  String getBreed();
  String getBirthday();
  DogGenderEnum getGender();
  bool getHasCollar();
  Future<void> registerDog();
}

class RegisterDogController implements IRegisterDogController {
  String name = '';
  String breed = '';
  String birthday = '';
  DogGenderEnum gender = DogGenderEnum.male;
  bool hasCollar = false;

  @override
  String getBirthday() => birthday;

  @override
  String getBreed() => breed;

  @override
  DogGenderEnum getGender() => gender;

  @override
  bool getHasCollar() => hasCollar;

  @override
  String getName() => name;

  @override
  Future<void> registerDog() async {}

  @override
  setBirthday(String value) {
    birthday = value;
  }

  @override
  setBreed(String value) {
    breed = value;
  }

  @override
  setGender(DogGenderEnum value) {
    gender = value;
  }

  @override
  setHasCollar(bool value) {
    hasCollar = value;
  }

  @override
  setName(String value) {
    name = value;
  }
}
