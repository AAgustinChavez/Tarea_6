import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class Colores with ChangeNotifier{

  final List<Color> _colors = <Color>[Colors.black87, Colors.red, Colors.blue, Colors.green];
  Color _actualColor =  Colors.grey.shade300;

  Color get actualColor => _actualColor;

  void changeBlack(){
    _actualColor = _colors[0];
    notifyListeners();
  }

  void changeRed(){
    _actualColor = _colors[1];
    notifyListeners();
  }
  void changeBlue(){
    _actualColor = _colors[2];
    notifyListeners();
  }
  void changeGreen(){
    _actualColor = _colors[3];
    notifyListeners();
  }

}