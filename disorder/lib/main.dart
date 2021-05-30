import 'package:disorder/app/feeds/feedsData.dart';
import 'package:disorder/login/login.dart';
import 'package:disorder/navigation/MainScreen.dart';
import 'package:disorder/navigation/changeOfPageLogic.dart';
import 'package:disorder/services/auth.dart';
import 'package:disorder/services/color.dart';
import 'package:disorder/services/database.dart';
import 'package:disorder/services/enterName.dart';
import 'package:disorder/services/user.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() async {
  Provider.debugCheckInvalidValueType = null;
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MultiProvider(providers: [
    ChangeNotifierProvider(create: (context) => ChangeofPage()),
    ChangeNotifierProvider(create: (context) => ColorsForApp()),
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
                    create: (context) => Database(
                      uid: user.uid,
                    ),
                  ),
                  ChangeNotifierProvider<FeedSettings>(
                      create: (context) => FeedSettings()),
                ],
                child: MaterialApp(home: Dession()),
              );
            }
          } else {
            return CircularProgressIndicator();
          }
        });
  }
}

class Dession extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final db = Provider.of<Database>(context);
    return StreamBuilder<List<UserXE>>(
        stream: db.userj(),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            if (snapshot.data.any((element) => element.uid == db.uid)) {
              UserXE user;
              snapshot.data.forEach((element) {
                if (element.uid == db.uid) {
                  user = element;
                }
              });
              return Provider(
                  create: (context) => UserXE(
                      uid: user.uid,
                      email: user.email,
                      isEmailVerified: user.isEmailVerified,
                      name: user.name),
                  child: MainScreen());
            } else {
              return EnterNAme(
                database: db,
              );
            }
          } else {
            return Center(child: CircularProgressIndicator());
          }
        });
  }
}
