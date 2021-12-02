import 'package:mongo_dart/mongo_dart.dart';

class User {
  
  ObjectId? id;
  String? name;
  String? password;
  User({this.id, this.name, this.password});

  Map<String, dynamic> toMap() {
    return {
      '_id': id,
      'name': name,
      'password': password,
      
    };
  }
  factory User.fromMap(map) {
    return User(
      id: map['uid'],
      name: map['email'],
      
    );
  }

  
  
}
