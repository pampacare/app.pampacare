import 'dart:convert';

class Test {
  int id;
  String name;
  Test({
    required this.id,
    required this.name,
  });

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'description': name,
    };
  }

  static List<Test> fromArray(List<dynamic> list) =>
      list.map((e) => Test.fromMap(e)).toList();

  factory Test.fromMap(Map<String, dynamic> map) {
    return Test(
      id: map['id'],
      name: map['name'],
    );
  }

  String toJson() => json.encode(toMap());

  factory Test.fromJson(String source) => Test.fromMap(json.decode(source));
}
