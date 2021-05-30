import 'package:disorder/services/database.dart';
import 'package:disorder/services/user.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class EnterNAme extends StatefulWidget {
  final Database database;

  const EnterNAme({Key key, this.database}) : super(key: key);
  @override
  _EnterNAmeState createState() => _EnterNAmeState();
}

class _EnterNAmeState extends State<EnterNAme> {
  TextEditingController _controller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          CupertinoTextField(
            controller: _controller,
            placeholder: "Enter Name",
            autofocus: true,
            placeholderStyle: TextStyle(color: Colors.white),
            decoration: BoxDecoration(
              border: Border(bottom: BorderSide(width: 1, color: Colors.black)),
            ),
          ),
          CupertinoButton(
            color: CupertinoColors.black,
            child: Text("Enter As Guest"),
            onPressed: () async {
              widget.database.some();
              await widget.database.createUserName(
                UserXE(
                  uid: widget.database.uid,
                  email: "",
                  isEmailVerified: false,
                  name: _controller.text,
                ),
              );
              widget.database.someend();
            },
          ),
          SizedBox(height: 10),
          widget.database.operation ? CircularProgressIndicator() : SizedBox()
        ],
      ),
    );
  }
}
