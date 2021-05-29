import 'package:flutter/material.dart';

class DummyData extends StatelessWidget {
  final String userName, simpleText;

  DummyData({this.userName, this.simpleText});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: Text('The name is $userName and this is $simpleText'),
        ),
      ),
    );
  }
}
