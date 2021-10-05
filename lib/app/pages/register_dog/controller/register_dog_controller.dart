import 'package:http/http.dart' as http;
import 'package:pampacare/app/shared/enum/dog_gender_enum.dart';

abstract class IRegisterDogController {
  setName(String value);
  setBreed(String value);
  setBirthday(String value);
  setGender(DogGenderEnum value);
  setHasCollar(bool value);
  setOwnerId(String value);
  String getName();
  String getBreed();
  String getBirthday();
  DogGenderEnum getGender();
  bool getHasCollar();
  String getOwnerId();
  Future<void> registerDog();
}

class RegisterDogController implements IRegisterDogController {
  String name = '';
  String breed = '';
  String birthday = '';
  DogGenderEnum gender = DogGenderEnum.male;
  bool hasCollar = false;
  String ownerId = '';

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
  String getOwnerId() => ownerId;

  @override
  Future<void> registerDog() async {
    final uri = Uri.http('192.168.1.85:3333', '/dogs');

    final response = await http.post(uri, body: {
      'name': name,
      'bornYear': birthday,
      'wearCollar': hasCollar,
      'sexId': gender.index + 1,
      'ownerId': ownerId,
      'breedId': 1
    });

    if (response.statusCode == 200) {
      print(response.body);
    } else {
      throw new Exception('Failed to load');
    }
  }

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

  @override
  setOwnerId(String value) {
    ownerId = value;
  }
}
