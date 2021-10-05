import 'dart:convert';

import 'package:pampacare/app/shared/models/dogs.dart';
import 'package:pampacare/app/shared/models/symptoms.dart';
import 'package:http/http.dart' as http;
import 'package:pampacare/app/shared/models/test.dart';

class AppointmentController {
  Dog? dog;
  String? data;
  String? observations;
  List<Symptom> symptomsDog = [];
  List<Symptom> symptomsList = [];
  List<Test> testList = [];
  List<Test> testDog = [];
  bool hasLvc = false;
  String treatment = '';

  Future<void> getSymptoms() async {
    final uri =
        Uri.parse('https://api-gateway-pampacare.herokuapp.com/exams/symptoms');

    final response = await http.get(uri);
    if (response.statusCode == 201) {
      symptomsList = Symptom.fromArray(json.decode(response.body)['body']);
    }
  }

  Future<void> getTests() async {
    final uri =
        Uri.parse('https://api-gateway-pampacare.herokuapp.com/exams/tests');

    final response = await http.get(uri);
    if (response.statusCode == 201) {
      testList = Test.fromArray(json.decode(response.body)['body']);
    }
  }

  Future<void> registerExam() async {
    final uri = Uri.parse(
        'https://api-gateway-pampacare.herokuapp.com/exams/register-exam');

    List<Map<String, dynamic>> listMaps = [];
    for (var item in symptomsDog) {
      listMaps.add(item.toMap());
    }
    final response = await http.post(uri, body: {
      'lvc': hasLvc,
      'dogId': dog!.id,
      'observation': observations,
      'symptomExamId': listMaps,
      'treatmentDescription': treatment,
      'testId': testDog.first.id
    });
    if (response.statusCode == 201) {
      testList = Test.fromArray(json.decode(response.body)['body']);
    }
  }
}
