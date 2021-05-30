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
          child: ListView(
            children: [
              Container(
                height: MediaQuery.of(context).size.height * 0.6,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: CachedNetworkImageProvider(
                      data.imageUrl,
                    ),
                    fit: BoxFit.cover,
                  ),
                  borderRadius: BorderRadius.circular(4.0),
                ),
              ),
              Text(
                data.title,
                style: TextStyle(color: Colors.white, fontSize: 22),
              ),
              SizedBox(height: 10),
              Text(
                data.discription,
                style: TextStyle(color: Colors.white, fontSize: 18),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
