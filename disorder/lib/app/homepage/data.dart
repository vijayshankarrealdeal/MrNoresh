import 'package:flutter/cupertino.dart';

String dummy = '''Lorem ipsum dolor sit amet,
       consectetur adipiscing elit. Curabitur posuere nisi at tortor molestie, id imperdiet turpis tincidunt. In hac habitasse platea dictumst. Phasellus varius pellentesque dui, ut euismod neque tempor sed. Pellentesque sed ultricies arcu. Suspendisse vehicula lacus eget tristique dictum. Suspendisse hendrerit quam nibh, vitae sagittis mi convallis sit amet. Donec id fermentum metus. Vivamus nec velit nunc. Duis nunc nulla, tempor molestie nulla at, varius pretium neque.
      Morbi placerat leo lacus, nec malesuada odio vulputate et. In dapibus mi nibh, vitae ultricies purus sagittis sed. Maecenas blandit mi tristique, tristique tortor sed, convallis eros. Sed eros erat, pretium non nisi a, viverra pharetra libero. Suspendisse congue lorem eget lorem commodo, laoreet lobortis nisl cursus. Fusce velit tellus, vestibulum cursus eros eu, pellentesque vulputate risus. Phasellus ornare interdum justo, vitae feugiat diam tincidunt sed. Mauris tellus nulla, mattis sit amet augue vitae, consequat gravida lectus. Fusce metus nulla.''';

class DataSettings extends ChangeNotifier {
  List<DataModel> data = [
    DataModel(
        title: 'Depression',
        discription: dummy,
        pastexperience: dummy,
        howtheyarenow: dummy),
    DataModel(
      title: 'Depression',
      discription: dummy,
      pastexperience: dummy,
      howtheyarenow: dummy,
    ),
    DataModel(title: 'Anxiety', discription: dummy),
    DataModel(
      title: 'Anxiety',
      discription: dummy,
      pastexperience: dummy,
      howtheyarenow: dummy,
    ),
    DataModel(
      title: 'Panic',
      discription: dummy,
      pastexperience: dummy,
      howtheyarenow: dummy,
    ),
    DataModel(
      title: 'Panic',
      discription: dummy,
      pastexperience: dummy,
      howtheyarenow: dummy,
    ),
    DataModel(
      title: 'Addiction',
      discription: dummy,
      pastexperience: dummy,
      howtheyarenow: dummy,
    ),
    DataModel(
      title: 'Addiction',
      discription: dummy,
      pastexperience: dummy,
      howtheyarenow: dummy,
    ),
    DataModel(
      title: 'Sleep-Wake',
      discription: dummy,
      pastexperience: dummy,
      howtheyarenow: dummy,
    ),
    DataModel(
      title: 'Sleep-Wake',
      discription: dummy,
      pastexperience: dummy,
      howtheyarenow: dummy,
    ),
    DataModel(
      title: 'Schizophrenia',
      discription: dummy,
      pastexperience: dummy,
      howtheyarenow: dummy,
    ),
    DataModel(
      title: 'Schizophrenia',
      discription: dummy,
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
