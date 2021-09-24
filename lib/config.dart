import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';



class SizeConfig{

  static late double _screenWidth;
  static late double _screenHeight ;
  static late double _blockSizeHorizontal;
  static late double _blockSizeVertical ;

  static late double textMultiplier;
  static late double width;
  static late double height  ;
  static late double kPadding  ;


  void init(BoxConstraints constraints, Orientation orientation ){

    if(orientation == Orientation.portrait){

      _screenWidth = constraints.maxWidth;
      _screenHeight = constraints.maxHeight;

    }else{
      _screenWidth = constraints.maxHeight;
      _screenHeight = constraints.maxWidth;
    }

    _blockSizeHorizontal = _screenWidth/100;
    _blockSizeVertical = _screenHeight/100;

    textMultiplier = _blockSizeVertical;
    width = _blockSizeHorizontal; // Screen Width Block
    height = _blockSizeVertical;
    kPadding = height * 2;


    print(_blockSizeVertical);
    print(_blockSizeHorizontal);
  }

}