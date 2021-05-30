import 'package:flutter/cupertino.dart';

String dummy = '''Lorem ipsum dolor sit amet,
       consectetur adipiscing elit. Curabitur posuere nisi at tortor molestie, id imperdiet turpis tincidunt. In hac habitasse platea dictumst. Phasellus varius pellentesque dui, ut euismod neque tempor sed. Pellentesque sed ultricies arcu. Suspendisse vehicula lacus eget tristique dictum. Suspendisse hendrerit quam nibh, vitae sagittis mi convallis sit amet. Donec id fermentum metus. Vivamus nec velit nunc. Duis nunc nulla, tempor molestie nulla at, varius pretium neque.
      Morbi placerat leo lacus, nec malesuada odio vulputate et. In dapibus mi nibh, vitae ultricies purus sagittis sed. Maecenas blandit mi tristique, tristique tortor sed, convallis eros. Sed eros erat, pretium non nisi a, viverra pharetra libero. Suspendisse congue lorem eget lorem commodo, laoreet lobortis nisl cursus. Fusce velit tellus, vestibulum cursus eros eu, pellentesque vulputate risus. Phasellus ornare interdum justo, vitae feugiat diam tincidunt sed. Mauris tellus nulla, mattis sit amet augue vitae, consequat gravida lectus. Fusce metus nulla.''';

class DataSettings extends ChangeNotifier {
  List<DataModel> data = [
    DataModel(
      title: 'Anxiety',
      imageUrl:
          'https://images.unsplash.com/photo-1608493830924-ec843d9c98c6?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=634&q=80',
      discription: dummy,
      pastexperience: dummy,
      howtheyarenow: dummy,
    ),
    DataModel(
      title: 'Panic',
      imageUrl:
          'https://images.unsplash.com/photo-1515023115689-589c33041d3c?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=634&q=80',
      discription: dummy,
      pastexperience: dummy,
      howtheyarenow: dummy,
    ),
    DataModel(
        imageUrl:
            'https://images.unsplash.com/photo-1547036967-23d11aacaee0?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=603&q=80',
        title: 'Depression',
        discription: dummy,
        pastexperience: dummy,
        howtheyarenow: dummy),
    DataModel(
      title: 'Addiction',
      imageUrl:
          'https://images.unsplash.com/photo-1601299124348-6a43706a155d?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=634&q=80',
      discription: dummy,
      pastexperience: dummy,
      howtheyarenow: dummy,
    ),
    DataModel(
      title: 'Sleep-Wake',
      imageUrl:
          'https://images.unsplash.com/photo-1545594262-ded8a9096085?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=634&q=80',
      discription: dummy,
      pastexperience: dummy,
      howtheyarenow: dummy,
    ),
    DataModel(
      title: 'Schizophrenia',
      discription: dummy,
      imageUrl:
          'https://images.unsplash.com/photo-1518495973542-4542c06a5843?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=634&q=80',
      pastexperience: dummy,
      howtheyarenow: dummy,
    ),
  ];
}

class DataModel {
  final String title;
  final String discription;
  final String imageUrl;
  final String pastexperience;
  final String howtheyarenow;
  final String type;

  DataModel(
      {this.title,
      this.discription,
      this.imageUrl,
      this.pastexperience,
      this.howtheyarenow,
      this.type});
  Map<String, dynamic> toJson() {
    return {
      'title': title,
      'discription': discription,
      "imageUrl": imageUrl,
      "pastexperience": pastexperience,
      "howtheyarenow": howtheyarenow,
      "type": type,
    };
  }
}
