import 'package:disorder/app/chat/messageData.dart';
import 'package:disorder/services/user.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Chat extends StatelessWidget {
  TextEditingController _controller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    MessageList list = MessageList();
    final detail = Provider.of<UserXE>(context);
    return Scaffold(
      backgroundColor: CupertinoColors.darkBackgroundGray,
      appBar: AppBar(
        backgroundColor: Colors.orangeAccent,
        title: Text(detail.name),
      ),
      body: Container(
        child: Column(
          children: [
            Expanded(
              flex: 1,
              child: ListView.builder(
                itemCount: list.message.length,
                itemBuilder: (ctx, i) {
                  return i % 2 == 0
                      ? Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Align(
                            alignment: Alignment.centerRight,
                            child: Container(
                              decoration: BoxDecoration(
                                  color: Colors.orange,
                                  borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(8.0),
                                    topRight: Radius.circular(8.0),
                                    bottomLeft: Radius.circular(8.0),
                                  )),
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text(list.message[i].message1,
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 18)),
                              ),
                            ),
                          ),
                        )
                      : Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Align(
                            alignment: Alignment.centerLeft,
                            child: Container(
                              decoration: BoxDecoration(
                                  color: Colors.deepOrange,
                                  borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(8.0),
                                    topRight: Radius.circular(8.0),
                                    bottomRight: Radius.circular(8.0),
                                  )),
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text(list.message[i].message2,
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 18)),
                              ),
                            ),
                          ),
                        );
                },
              ),
            ),
            CupertinoTextField(
              suffix: CupertinoButton(
                child: Text("Send"),
                onPressed: () => print(''),
              ),
              controller: _controller,
              placeholder: "message",
              autofocus: false,
              placeholderStyle: TextStyle(color: Colors.grey),
              decoration: BoxDecoration(
                border:
                    Border(bottom: BorderSide(width: 1, color: Colors.black)),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
