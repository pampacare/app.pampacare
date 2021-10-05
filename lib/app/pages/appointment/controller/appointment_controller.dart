import 'dart:convert';

import 'package:pampacare/app/shared/models/dogs.dart';
import 'package:pampacare/app/shared/models/symptoms.dart';
import 'package:http/http.dart' as http;

class AppointmentController {
  Dog? dog;
  String? data;
  String? observations;
  List<Symptom> symptomsDog = [];
  List<Symptom> symptomsList = [];

  Future<void> getSymptoms() async {
    final uri =
        Uri.parse('https://api-gateway-pampacare.herokuapp.com/exams/symptoms');

    final response = await http.get(uri);
    if (response.statusCode == 201) {
      symptomsList = Symptom.fromArray(json.decode(response.body)['body']);
    }
  }
}
