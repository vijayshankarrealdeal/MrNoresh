import 'package:disorder/app/homepage/data.dart';
import 'package:flutter/material.dart';

class DummyData extends StatelessWidget {
  final DataModel data;

  DummyData({
    this.data,
  });

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          child: Column(
            children: [
              Text(data.discription),
            ],
          ),
        ),
      ),
    );
  }
}
