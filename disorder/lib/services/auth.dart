import 'package:disorder/services/user.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';

class Auth extends ChangeNotifier {
  final _refrence = FirebaseAuth.instance;
  bool operation = false;
  void some() {
    operation = true;
    notifyListeners();
  }

  void someend() {
    operation = false;
    notifyListeners();
  }

  Stream<UserXE> get onAuthChange {
    return _refrence.authStateChanges().map(_userDetailsOfFirebase);
  }

  Future<UserXE> signInEmailandPassword(String email, String password) async {
    final result = await _refrence.signInWithEmailAndPassword(
        email: email, password: password);
    notifyListeners();
    return _userDetailsOfFirebase(result.user);
  }

  Future<UserXE> createEmailandPassword(String email, String password) async {
    final result = await _refrence.createUserWithEmailAndPassword(
        email: email, password: password);
    notifyListeners();
    return _userDetailsOfFirebase(result.user);
  }

  Future<UserXE> createAnoUser() async {
    final res = await _refrence.signInAnonymously();
    return _userDetailsOfFirebase(res);
  }

  UserXE _userDetailsOfFirebase(user) {
    if (user == null) {
      return null;
    } else {
      return UserXE(
          uid: user.uid,
          email: user.email,
          isEmailVerified: user.emailVerified);
    }
  }

  Future<void> signOut() async {
    await _refrence.signOut();
    notifyListeners();
  }
}


