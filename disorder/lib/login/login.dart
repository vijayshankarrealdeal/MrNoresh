import 'package:disorder/services/auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class LoginForApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final auth = Provider.of<Auth>(context);
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/h.jpg'),
            fit: BoxFit.cover,
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(18.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(width: double.infinity),
          
              SizedBox(height: 20),
              CupertinoButton(
                  color: CupertinoColors.black,
                  child: Text("Enter As Guest"),
                  onPressed: () async {
                    auth.some();
                    await auth.createAnoUser();
                  }),
              SizedBox(height: 10),
              auth.operation ? CircularProgressIndicator() : SizedBox()
            ],
          ),
        ),
      ),
    );
  }
}
