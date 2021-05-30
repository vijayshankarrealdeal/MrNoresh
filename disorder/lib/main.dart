import 'package:disorder/app/feeds/disorder_options.dart';
import 'package:disorder/app/feeds/feedsData.dart';
import 'package:disorder/login/login.dart';
import 'package:disorder/navigation/changeOfPageLogic.dart';
import 'package:disorder/services/auth.dart';
import 'package:disorder/services/color.dart';
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
                      create: (context) => Database()),
                  ChangeNotifierProvider<FeedSettings>(
                      create: (context) => FeedSettings()),
                ],
                child: MaterialApp(home: DisorderOptions()),
              );
            }
          } else {
            return CircularProgressIndicator();
          }
        });
  }
}
