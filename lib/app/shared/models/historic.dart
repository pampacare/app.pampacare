import 'dart:convert';

class Historic {
  String observation;
  bool lvc;
  String timeStamp;
  Historic(
      {required this.observation, required this.lvc, required this.timeStamp});

  @override
  String toString() =>
      'Historic(observation: $observation, lvc: $lvc, timeStamp: $timeStamp)';

  Map<String, dynamic> toMap() {
    return {
      'observation': observation,
      'lvc': lvc,
      'timeStamp': timeStamp,
    };
  }

  factory Historic.fromMap(Map<String, dynamic> map) {
    return Historic(
      observation: map['observation'],
      lvc: map['lvc'],
      timeStamp: map['timeStamp'],
    );
  }

  static List<Historic> fromArray(List<dynamic> list) =>
      list.map((e) => Historic.fromMap(e)).toList();

  String toJson() => json.encode(toMap());

  factory Historic.fromJson(String source) =>
      Historic.fromMap(json.decode(source));
}
