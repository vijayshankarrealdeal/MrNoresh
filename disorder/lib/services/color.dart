import 'package:flutter/cupertino.dart';

class ColorsForApp extends ChangeNotifier {
  bool lightMode = false;
  ColorsForApp() {

  }



  Color get colorOfScaffold => _colorofscaffold();
  Color get colorRedOrBlue => _colorof25569585with1opactiy();
  Color get navigationBar => _colorOfNavigationBar();
  Color get searchBar => _colorOfTextEditing();
  Color get placeholder => _colorForPlaceholder();
  Color get textformField => _colorFormText();
  Color get bottomNavigationBar => _colorForBottomNavigationBar();
  Color get nonactive => _nonActive();
  Color get active => _active();
  Color get upnavbar => _upNavigationBar();
  Color get subTitle => _colorsubHeading();
  Color get anotherScaffold => _colorForListScaffold();
  Color get listViewColor => _getListViewColor();
  Color get textColorGenral => _getgenralTextColor();
  Color get colorOfListIcon => _getcolorOfListIcon();
  Color get colorOfCalenderCircle => _colorForCalenderselect();
  Color get colorOfCalenderselect => _colorForCalenderDark();
  Color get colorOfFeedsBottom => _colorOfFeedsBottom();

  Color _colorForCalenderDark() {
    if (lightMode == null) {
      lightMode = false;
      notifyListeners();
    }
    if (lightMode) {
      return Color.fromRGBO(0, 122, 255, 1);
    } else {
      return Color.fromRGBO(10, 132, 255, 1);
    }
  }

  Color _colorOfFeedsBottom() {
    if (lightMode == null) {
      lightMode = false;
      notifyListeners();
    }
    if (lightMode) {
      return Color.fromRGBO(242, 242, 247, 1);
    } else {
      return Color.fromRGBO(28, 28, 30, 1);
    }
  }

  Color _colorForCalenderselect() {
    if (lightMode == null) {
      lightMode = false;
      notifyListeners();
    }
    if (lightMode) {
      return Color.fromRGBO(10, 132, 255, 0.12);
    }
    return Color.fromRGBO(0, 122, 255, 0.12);
  }

  Color _getcolorOfListIcon() {
    if (lightMode == null) {
      lightMode = false;
      notifyListeners();
    }
    if (lightMode) {
      return Color.fromRGBO(60, 60, 67, 0.30);
    } else {
      return Color.fromRGBO(235, 235, 245, 0.30);
    }
  }

  Color _getgenralTextColor() {
    if (lightMode == null) {
      lightMode = false;
      notifyListeners();
    }
    if (lightMode) {
      return CupertinoColors.black;
    } else {
      return CupertinoColors.white;
    }
  }

  Color _colorForListScaffold() {
    if (lightMode == null) {
      lightMode = false;
      notifyListeners();
    }
    if (lightMode) {
      return Color.fromRGBO(242, 242, 247, 1);
    } else {
      return Color.fromRGBO(0, 0, 0, 1);
    }
  }

  Color _getListViewColor() {
    if (lightMode == null) {
      lightMode = false;
      notifyListeners();
    }
    if (lightMode) {
      return CupertinoColors.white;
    } else {
      return Color.fromRGBO(28, 28, 30, 1);
    }
  }

  ///
  Color _colorForPlaceholder() {
    if (lightMode == null) {
      lightMode = false;
      notifyListeners();
    }
    if (lightMode) {
      return Color.fromRGBO(60, 60, 67, 0.60);
    } else {
      return Color.fromRGBO(235, 235, 245, 0.60);
    }
  }

  Color _upNavigationBar() {
    if (lightMode == null) {
      lightMode = false;
      notifyListeners();
    }
    if (lightMode) {
      return CupertinoColors.black;
    } else {
      return CupertinoColors.white;
    }
  }

  Color _colorFormText() {
    if (lightMode == null) {
      lightMode = false;
      notifyListeners();
    }
    if (lightMode) {
      return CupertinoColors.black;
    } else {
      return CupertinoColors.white;
    }
  }

  Color _colorsubHeading() {
    if (lightMode == null) {
      lightMode = false;
      notifyListeners();
    }
    if (lightMode) {
      return Color.fromRGBO(60, 60, 67, 0.60);
    } else {
      return Color.fromRGBO(235, 235, 245, 0.60);
    }
  }

  Color _active() {
    if (lightMode == null) {
      lightMode = false;
      notifyListeners();
    }
    if (lightMode) {
      return Color.fromRGBO(0, 122, 255, 1);
    } else {
      return Color.fromRGBO(235, 69, 58, 1);
    }
  }

  Color _nonActive() {
    if (lightMode == null) {
      lightMode = false;
      notifyListeners();
    }
    if (lightMode) {
      return Color.fromRGBO(153, 153, 153, 1);
    } else {
      return Color.fromRGBO(117, 117, 117, 1);
    }
  }

  Color _colorForBottomNavigationBar() {
    if (lightMode == null) {
      lightMode = false;
    }
    if (lightMode) {
      return Color.fromRGBO(249, 249, 249, 0.94);
    } else {
      return Color.fromRGBO(22, 22, 22, 0.94);
    }
  }

  ///
  Color _colorOfNavigationBar() {
    if (lightMode == null) {
      lightMode = false;
      notifyListeners();
    }
    if (lightMode) {
      return Color.fromRGBO(249, 249, 249, 0.94);
    } else {
      return Color.fromRGBO(29, 29, 29, 0.94);
    }
  }

  Color _colorOfTextEditing() {
    if (lightMode == null) {
      lightMode = false;
      notifyListeners();
    }
    if (lightMode) {
      return Color.fromRGBO(118, 118, 128, 0.12);
    } else {
      return Color.fromRGBO(118, 118, 128, 0.24);
    }
  }

  ///Dark Mode
  Color _colorofscaffold() {
    if (lightMode == null) {
      lightMode = false;
    }
    if (lightMode) {
      return Color.fromRGBO(255, 255, 255, 1);
    } else {
      return Color.fromRGBO(0, 0, 0, 1);
    }
  }

  Color _colorof25569585with1opactiy() {
    if (lightMode == null) {
      lightMode = false;
      notifyListeners();
    }
    if (lightMode) {
      return CupertinoColors.systemBlue;
    } else {
      return Color.fromRGBO(255, 69, 58, 1);
    }
  }
}
