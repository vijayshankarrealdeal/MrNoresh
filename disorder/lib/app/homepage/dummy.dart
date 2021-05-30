import 'package:flutter/material.dart';
import 'package:disorder/app/homepage/data.dart';

class DummyData extends StatelessWidget {
  final DataModel data;
  final myController = TextEditingController();

  DummyData({
    this.data,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black45,
      appBar: AppBar(
        title: TextField(
          controller: myController,
        ),
        leading: TextButton(
          child: Text('Post'),
          onPressed: () {},
          style: TextButton.styleFrom(backgroundColor: Colors.red),
        ),
      ),
      body: ListView.builder(
        itemCount: 5,
        itemBuilder: (BuildContext context, int index) {
          return PostCard(
            pData: data,
          );
        },
      ),
    );
  }
}

class PostCard extends StatelessWidget {
  final DataModel pData;

  PostCard({
    this.pData,
  });

  @override
  Widget build(BuildContext context) {
    final TextStyle titleTheme = Theme.of(context)
        .textTheme
        .headline6
        .copyWith(color: Colors.deepOrange[600]);
    final TextStyle summaryTheme =
        Theme.of(context).textTheme.bodyText1.copyWith(color: Colors.blue[900]);
    final String title = pData.title;
    final String summary = pData.discription;
    return AspectRatio(
      aspectRatio: 5 / 9,
      child: Card(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Container(child: Text(title ?? "", style: titleTheme)),
              Container(child: Text(summary ?? "", style: summaryTheme)),
            ],
          ),
        ),
      ),
    );
  }
}
