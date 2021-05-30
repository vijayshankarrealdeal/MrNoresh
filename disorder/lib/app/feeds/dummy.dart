import 'package:cached_network_image/cached_network_image.dart';
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
        backgroundColor: Colors.black,
        body: Container(
          child: Column(
            children: [
              Stack(
                children: [
                  Container(
                    height: MediaQuery.of(context).size.height * 0.6,
                    decoration: BoxDecoration(
                      color: Colors.black.withOpacity(0.4),
                      borderRadius: BorderRadius.circular(24.0),
                    ),
                  ),
                  Text(
                    data.discription,
                    style: TextStyle(color: Colors.white, fontSize: 18),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
