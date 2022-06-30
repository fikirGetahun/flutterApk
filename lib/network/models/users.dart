import 'package:flutter/foundation.dart';
import 'package:json_annotation/json_annotation.dart';


part 'users.g.dart';

@JsonSerializable()

class User {
 
  final String username;
  final String email;
  final String password1;
  final String password2;

  User ({
    required this.username,
    required this.email,
    required this.password1,
    required this.password2
  });


  factory User.fromJson(Map<String, dynamic> json){  // this translets from class constructors to json
    return _$UserFromJson(json);
  }


Map<String, dynamic> toJson() => _$UserToJson(this);


}
