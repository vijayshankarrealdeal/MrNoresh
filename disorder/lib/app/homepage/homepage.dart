import 'package:cached_network_image/cached_network_image.dart';
import 'package:disorder/app/feeds/feedsData.dart';
import 'package:disorder/app/homepage/data.dart';
import 'package:disorder/services/user.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Homepage extends StatelessWidget {
  TextEditingController _controller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    final detail = Provider.of<UserXE>(context);
    DataSettings set = DataSettings();
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black,
        body: Container(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CircleAvatar(
                  radius: 22.5,
                  backgroundColor: Colors.blue,
                  child: Text(
                    detail.name.substring(0, 1),
                    style: TextStyle(
                        fontSize: 28,
                        color: Colors.white,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                Row(
                  children: [
                    Expanded(
                      child: CupertinoTextField(
                        suffix: CupertinoButton(
                          padding: EdgeInsets.all(7.0),
                          child: Text("Search"),
                          onPressed: () => print(''),
                        ),
                        controller: _controller,
                        placeholder: "Search Everything",
                        autofocus: false,
                        placeholderStyle: TextStyle(color: Colors.grey),
                        decoration: BoxDecoration(
                          border: Border(
                              bottom:
                                  BorderSide(width: 1, color: Colors.white)),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 30),
                Row(
                  children: [
                    Expanded(
                      child: Row(
                        children: [
                          Expanded(
                            child: CupertinoTextField(
                              suffix: CupertinoButton(
                                padding: EdgeInsets.zero,
                                child: Text("Post"),
                                onPressed: () => print(''),
                              ),
                              controller: _controller,
                              placeholder: "Post Something",
                              autofocus: false,
                              placeholderStyle: TextStyle(color: Colors.grey),
                              decoration: BoxDecoration(
                                border: Border(
                                    bottom: BorderSide(
                                        width: 1, color: Colors.white)),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 20),
                Expanded(
                    child: ListView(
                  children: set.data.map((e) {
                    return Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(12.0)),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Align(
                                alignment: Alignment.bottomLeft,
                                child: Row(
                                  children: [
                                    CircleAvatar(
                                      backgroundColor: Colors.blue,
                                      child: Text(
                                        e.title.substring(0, 1),
                                        style: TextStyle(
                                            fontSize: 28,
                                            color: Colors.white,
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(left: 8.0),
                                      child: Text(
                                        e.title,
                                        textAlign: TextAlign.left,
                                        style: TextStyle(
                                            fontSize: 18,
                                            color: Colors.black,
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(height: 10),
                              Text(
                                e.discription.substring(0, 150),
                                style: TextStyle(color: Colors.black),
                              ),
                              SizedBox(height: 20),
                              Container(
                                decoration: BoxDecoration(
                                  image: DecorationImage(
                                    image:
                                        CachedNetworkImageProvider(e.imageUrl),
                                    fit: BoxFit.cover,
                                  ),
                                  borderRadius: BorderRadius.circular(12.0),
                                ),
                                height: 400,
                              ),
                              SizedBox(height: 10),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Past experience",
                                    style: TextStyle(color: Colors.grey),
                                  ),
                                  Text(
                                    e.pastexperience.substring(0, 130),
                                    style: TextStyle(color: Colors.black),
                                  ),
                                ],
                              )
                            ],
                          ),
                        ),
                      ),
                    );
                  }).toList(),
                ))
              ],
            ),
          ),
        ),
      ),
    );
  }
}
