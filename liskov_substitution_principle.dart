/*

The purpose of substitution is to replace a subtype somehow with its general parent type.
The Liskov Substitution Principle (LSP) is another cornerstone of SOLID principles.
It states that subtypes should be substitutable for their base types without altering 
the program's correctness. In simpler terms, if you have a base class (or widget in Flutter)
and derived classes (subclasses or child widgets), using a derived class wherever you expect
the base class should work seamlessly without causing unexpected behavior.

*/

class UserEntity {
  final int id;
  final String name;

  UserEntity({required this.id, required this.name});
}

class UserModel extends UserEntity {
  UserModel({required super.id, required super.name});

  factory UserModel.fromJson(Map<String, dynamic> json) => UserModel(
        id: json['id'],
        name: json['name'],
      );

  Map<String, dynamic> toJson() => {'id': id, 'name': name};
}
