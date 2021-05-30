import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:disorder/services/user.dart';
import 'package:flutter/cupertino.dart';

class Database extends ChangeNotifier {
  final String uid;

  Database({this.uid});
  final _ref = FirebaseFirestore.instance;
  bool operation = false;
  void some() {
    operation = true;
    notifyListeners();
  }

  void someend() {
    operation = false;
    notifyListeners();
  }

  Future<void> createUserName(UserXE data) async {
    _ref.collection('user').doc(uid).set(data.toJson());
  }

  Stream<List<UserXE>> userj() {
    return _ref.collection('user').snapshots().map(
        (event) => event.docs.map((e) => UserXE.fromJson(e.data())).toList());
  }
}
