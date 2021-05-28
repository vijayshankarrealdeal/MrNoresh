import 'package:disorder/login/login.dart';
import 'package:disorder/services/auth.dart';
import 'package:disorder/services/database.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() async {
  Provider.debugCheckInvalidValueType = null;
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MultiProvider(providers: [
    ChangeNotifierProvider(create: (context) => Auth()),
  ], child: MyApp()));
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final _auth = Provider.of<Auth>(context);
    return StreamBuilder<Object>(
        stream: _auth.onAuthChange,
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.active) {
            UserXE user = snapshot.data;
            if (user == null) {
              return MaterialApp(
                home: LoginForApp(),
              );
            } else {
              return MultiProvider(
                providers: [
                  ChangeNotifierProvider<Database>(
                      create: (context) => Database()),
                ],
                child: MyHomePage(),
              );
            }
          } else {
            return CircularProgressIndicator();
          }
        });
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      appBar: AppBar(),
      body: Container(
        height: 500,
        width: 400,
        color: Colors.yellow,
        child: Text("hell"),
      ),
    );
  }
}
