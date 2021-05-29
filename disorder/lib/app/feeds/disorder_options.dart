import 'package:cached_network_image/cached_network_image.dart';
import 'package:disorder/app/feeds/dummy.dart';
import 'package:disorder/app/feeds/feedsData.dart';
import 'package:disorder/services/auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class DisorderOptions extends StatelessWidget {
  final String userName;

  DisorderOptions({this.userName});
  @override
  Widget build(BuildContext context) {
    final auth = Provider.of<Auth>(context);
    return Scaffold(
      backgroundColor: CupertinoColors.black,
      appBar: AppBar(
        title: Text('Select your disorder!'),
        backgroundColor: CupertinoColors.darkBackgroundGray,
        actions: [
          CupertinoButton(
            child: Icon(Icons.exit_to_app),
            onPressed: () => auth.signOut(),
          ),
        ],
      ),
      body: Consumer<FeedSettings>(
        builder: (context, data, _) {
          return Container(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: ListView.builder(
                itemCount: data.data.length,
                itemBuilder: (context, index) {
                  return ClickableImage(
                    imageUrl: data.data[index].imageName,
                    title: data.data[index].title,
                    onPress: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => DummyData(
                          userName: "",
                          simpleText: "",
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
          );
        },
      ),
    );
  }
}

class ClickableImage extends StatelessWidget {
  final Function onPress;
  final String imageUrl;
  final String title;

  ClickableImage({this.onPress, this.title, this.imageUrl});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: InkWell(
        onTap: onPress,
        child: Container(
          height: MediaQuery.of(context).size.height * 0.7,
          width: MediaQuery.of(context).size.width / 2.21,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: CachedNetworkImageProvider(imageUrl),
              fit: BoxFit.cover,
            ),
            borderRadius: BorderRadius.circular(20.0),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Container(
                width: double.infinity,
                height: 70,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(15.0),
                        bottomRight: Radius.circular(15.0)),
                    color: Colors.black.withOpacity(0.4)),
                child: Padding(
                  padding: const EdgeInsets.only(left: 14.0, top: 8),
                  child: Text(
                    title ?? '',
                    style: TextStyle(color: Colors.white, fontSize: 48),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
