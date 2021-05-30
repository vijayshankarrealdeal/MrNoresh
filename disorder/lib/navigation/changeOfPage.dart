import 'package:disorder/navigation/changeOfPageLogic.dart';
import 'package:disorder/services/color.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

import 'package:provider/provider.dart';

class MaterialBottomNavigationBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final nav = Provider.of<ChangeofPage>(context);
    final colorXX = Provider.of<ColorsForApp>(context);
    return CupertinoTheme(
      data: CupertinoThemeData(
        brightness: Brightness.dark,
      ),
      child: Container(
        height: MediaQuery.of(context).size.height * 0.065,
        decoration: BoxDecoration(
          color: colorXX.bottomNavigationBar,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            CupertinoButton(
              onPressed: () {
                nav.kCallback(0);
                nav.change(0);
              },
              child: Icon(
                CupertinoIcons.circle,
                size: nav.active[0] ? nav.size : nav.activesize,
                color: nav.active[0] ? colorXX.nonactive : colorXX.active,
              ),
            ),
            CupertinoButton(
              onPressed: () {
                nav.kCallback(1);
                nav.change(1);
              },
              child: Icon(
                CupertinoIcons.app,
                size: nav.active[1] ? nav.size : nav.activesize,
                color: nav.active[1] ? colorXX.nonactive : colorXX.active,
              ),
            ),
            CupertinoButton(
              onPressed: () {
                nav.kCallback(2);
                nav.change(2);
              },
              child: Icon(
                CupertinoIcons.chat_bubble_2,
                size: nav.active[2] ? nav.size : nav.activesize,
                color: nav.active[2] ? colorXX.nonactive : colorXX.active,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
