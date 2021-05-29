import 'package:flutter/foundation.dart';

class FeedSettings extends ChangeNotifier {
  List<FeedsData> _disorders = [
    FeedsData(
      title: 'Anxiety',
      imageName:
          'https://images.unsplash.com/photo-1608493830924-ec843d9c98c6?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=634&q=80',
    ),
    FeedsData(
      title: 'Panic',
      imageName:
          'https://images.unsplash.com/photo-1515023115689-589c33041d3c?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=634&q=80',
    ),
    FeedsData(
      title: 'Depression',
      imageName:
          'https://images.unsplash.com/photo-1547036967-23d11aacaee0?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=603&q=80',
    ),
    FeedsData(
      title: 'Addiction',
      imageName:
          'https://images.unsplash.com/photo-1601299124348-6a43706a155d?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=634&q=80',
    ),
    FeedsData(
      title: 'Sleep-Wake',
      imageName:
          'https://images.unsplash.com/photo-1545594262-ded8a9096085?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=634&q=80',
    ),
    FeedsData(
      title: 'Schizophrenia',
      imageName:
          'https://images.unsplash.com/photo-1518495973542-4542c06a5843?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=634&q=80',
    ),
  ];
  List<FeedsData> get data => _disorders;
}

class FeedsData {
  final String title;
  final String imageName;

  FeedsData({this.title, this.imageName});
}
