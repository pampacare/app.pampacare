class Dogs {
  final String street;
  final List<Dog> dog;

  Dogs({required this.street, required this.dog});

  factory Dogs.fromJson(Map<String, dynamic> json) {
    return Dogs(street: json['street'], dog: Dog.fromArray(json['dog']));
  }

  static List<Dogs> fromArray(List<dynamic> list) =>
      list.map((element) => Dogs.fromJson(element)).toList();

  Map<String, dynamic> toMap() {
    return {'street': street, 'dog': dog};
  }
}

class Dog {
  final String id;
  final String name;
  final int breed;

  Dog({required this.id, required this.name, required this.breed});

  factory Dog.fromJson(Map<String, dynamic> json) {
    return Dog(id: json['id'], name: json['name'], breed: json['breed_id']);
  }

  static List<Dog> fromArray(List<dynamic> list) =>
      list.map((element) => Dog.fromJson(element)).toList();

  Map<String, dynamic> toMap() {
    return {'id': id, 'name': name, 'breed_id': breed};
  }
}
