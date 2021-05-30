import 'package:disorder/app/chat/Chat.dart';
import 'package:disorder/app/feeds/disorder_options.dart';
import 'package:disorder/app/homepage/homepage.dart';
import 'package:disorder/navigation/changeOfPage.dart';
import 'package:disorder/navigation/changeOfPageLogic.dart';
import 'package:flutter/material.dart';

import 'package:provider/provider.dart';

class MainScreen extends StatelessWidget {
  final List<Widget> children = [
    Homepage(),
    DisorderOptions(),
    Chat(),
  ];

  @override
  Widget build(BuildContext context) {
    final nav = Provider.of<ChangeofPage>(context);
    return Scaffold(
      body: children[nav.pageIndex],
      bottomNavigationBar: MaterialBottomNavigationBar(),
    );
  }
}
