import 'package:flutter/widgets.dart';

class BottomNavProvider extends ChangeNotifier {

  int _currentIndex = 0;

  get getCurrentIndex => _currentIndex;

  void setNewIndex(int index){
    _currentIndex = index;
    notifyListeners();
  }
}