import 'package:disorder/navigation/changeOfPage.dart';
import 'package:disorder/navigation/changeOfPageLogic.dart';
import 'package:flutter/material.dart';

import 'package:provider/provider.dart';

class MainScreen extends StatelessWidget {
  final List<Widget> children = [
   
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
