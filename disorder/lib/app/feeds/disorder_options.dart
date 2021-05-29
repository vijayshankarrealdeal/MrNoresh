import 'package:disorder/app/feeds/dummy.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

const List<List<String>> disorders = [
  [
    'Anxiety',
    'Panic',
  ],
  [
    'Depression',
    'Addiction',
  ],
  [
    'Sleep-Wake',
    'Schizophrenia',
  ]
];

const List<List<String>> imageUrls = [
  [
    'matthew-ball-3wW2fBjptQo-unsplash.jpg',
    'caju-gomes-QDq3YliZg48-unsplash.jpg',
  ],
  [
    'carles-rabada-DD1fSz2HF1s-unsplash.jpg',
    'jonathan-borba-yvWdikF2MyE-unsplash.jpg',
  ],
  [
    'bishka-nguyen-nJF42yBkQzg-unsplash.jpg',
    'jeremy-bishop-EwKXn5CapA4-unsplash.jpg',
  ]
];

class DisorderOptions extends StatefulWidget {
  final String userName;

  DisorderOptions({this.userName});

  @override
  _DisorderOptionsState createState() => _DisorderOptionsState();
}

class _DisorderOptionsState extends State<DisorderOptions> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF1D1E33),
      appBar: AppBar(
        title: Text('Select your disorder!'),
        backgroundColor: Colors.green,
      ),
      body: Container(
        padding: EdgeInsets.all(5.0),
        child: ListView.builder(
            itemCount: imageUrls.length,
            itemBuilder: (context, index) {
              if (index != imageUrls.length)
                return Row(
                  children: [
                    Column(
                      children: [
                        ClickableImage(
                          imageUrl: imageUrls[index][0],
                          onPress: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => DummyData(
                                          userName: widget.userName,
                                          simpleText: 'image$index[0]',
                                        )));
                          },
                        ),
                        Container(
                          padding: EdgeInsets.symmetric(
                            horizontal: 3.0,
                            vertical: 5.0,
                          ),
                          child: Center(
                            child: Text(
                              disorders[index][0],
                              style: TextStyle(
                                fontSize: 22.0,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              ),
                            ),
                          ),
                          width: MediaQuery.of(context).size.width / 2.21,
                          height: 50.0,
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        ClickableImage(
                          imageUrl: imageUrls[index][1],
                          onPress: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => DummyData(
                                          userName: widget.userName,
                                          simpleText: 'image$index[0]',
                                        )));
                          },
                        ),
                        Container(
                          padding: EdgeInsets.symmetric(
                            horizontal: 3.0,
                            vertical: 5.0,
                          ),
                          child: Center(
                            child: Text(
                              disorders[index][1],
                              style: TextStyle(
                                fontSize: 22.0,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              ),
                            ),
                          ),
                          width: MediaQuery.of(context).size.width / 2.21,
                          height: 50.0,
                        ),
                      ],
                    ),
                  ],
                );
              else
                return CircularProgressIndicator();
            }),
      ),
    );
  }
}

class ClickableImage extends StatelessWidget {
  final Function onPress;
  final String imageUrl;

  ClickableImage({this.onPress, this.imageUrl});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(3.0),
      child: InkWell(
        onTap: onPress,
        child: Container(
          height: 200.0,
          width: MediaQuery.of(context).size.width / 2.21,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/images/$imageUrl'),
              fit: BoxFit.cover,
            ),
            borderRadius: BorderRadius.circular(15.0),
          ),
        ),
      ),
    );
  }
}
