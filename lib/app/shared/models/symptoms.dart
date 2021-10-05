import 'dart:convert';

class Symptom {
  int id;
  String description;
  Symptom({
    required this.id,
    required this.description,
  });

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'description': description,
    };
  }

  static List<Symptom> fromArray(List<dynamic> list) =>
      list.map((e) => Symptom.fromMap(e)).toList();

  factory Symptom.fromMap(Map<String, dynamic> map) {
    return Symptom(
      id: map['id'],
      description: map['description'],
    );
  }

  String toJson() => json.encode(toMap());

  factory Symptom.fromJson(String source) =>
      Symptom.fromMap(json.decode(source));
}
