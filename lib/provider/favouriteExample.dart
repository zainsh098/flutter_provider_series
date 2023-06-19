

import 'package:flutter/foundation.dart';

class FavouriteExample extends ChangeNotifier
{
  List<int> _favSelected=[];
   List<int> get favourite =>_favSelected;

  void Selected(int value)
  {
    _favSelected.add(value);
  notifyListeners();
  }
  void unSelected(int index)
  {

    _favSelected.remove(index);
    notifyListeners();

  }






}
