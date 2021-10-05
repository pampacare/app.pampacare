import 'dart:convert';

import 'package:pampacare/app/shared/models/dogs.dart';
import 'package:pampacare/app/shared/models/historic.dart';
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
  List<Historic> historicList = [];
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

  Future<void> getHistoric() async {
    final uri = Uri.parse(
        'https://api-gateway-pampacare.herokuapp.com/exams/${dog!.id}');

    final response =
        await http.get(uri, headers: {'Content-Type': 'application/json'});
    if (response.statusCode == 200) {
      historicList = Historic.fromArray(json.decode(response.body)['body']);
    }
  }

  Future<void> registerExam() async {
    final uri = Uri.parse(
        'https://api-gateway-pampacare.herokuapp.com/exams/register-exam');

    List<Map<String, dynamic>> listMaps = [];
    for (var item in symptomsDog) {
      listMaps.add(item.toMap());
    }
    var client = http.Client();
    final response = await client.post(uri,
        body: jsonEncode({
          "observation": observations,
          "lvc": true,
          "dogId": dog!.id,
          "symptomExamId": listMaps,
          "treatmentDescription": treatment,
          "testId": testDog.first.id
        }));
    if (response.statusCode == 200) {
      print(response);
    }
  }
}
