import 'package:flutter/cupertino.dart';

class Provider_Services extends ChangeNotifier{
  var val=0;
  Increment(){
    val++;
    notifyListeners();
  }
  Decrement(){
    val--;
    notifyListeners();
  }

}