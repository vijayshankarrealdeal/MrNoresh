import 'package:flutter/cupertino.dart';

class UserXE extends ChangeNotifier {
  final String uid;
  final String email;
  final String name;
  bool isEmailVerified = false;

  UserXE(
      {@required this.uid,
      this.name,
      @required this.email,
      @required isEmailVerified});

  Map<String, dynamic> toJson() {
    return {
      'uid': uid,
      'name': name,
      'email': email,
    };
  }

  factory UserXE.fromJson(Map<String, dynamic> data) {
    if (data == null) {
      return null;
    } else {
      // ignore: missing_required_param
      return UserXE(uid: data['uid'], email: data['email'], name: data['name']);
    }
  }
}
