import 'package:flutter/material.dart';
import '/config.dart';


/// Default Padding
double kPadding = SizeConfig.kPadding;

/// Base Url
String baseUrl = "https://api.covid19api.com";

/// No Image Url
String noImageUrl = "https://freepikpsd.com/media/2019/10/blank-png-file-1-Transparent-Images.png";


/// Selected Tab Index
int selectedTab = 0;



///++++++++++++++++++++++++++ Circular Contrainer ++++++++++++++++++++++++++++++
///++++++++++++++++++++++++++ Circular Contrainer ++++++++++++++++++++++++++++++
BoxDecoration circularEdges(double topLeft, double topRight , double bottomLeft, double bottomRight , Color color ){


  return BoxDecoration(
    borderRadius: BorderRadius.only(
        topLeft: Radius.circular(topLeft) ,
        topRight:  Radius.circular(topRight),
        bottomLeft: Radius.circular(bottomLeft),
        bottomRight: Radius.circular(bottomRight)
    ),
    color: color,
  );


}

///++++++++++++++++++++++++++++  Color Declaration ++++++++++++++++++++++++++
///++++++++++++++++++++++++++++  Color Declaration ++++++++++++++++++++++++++
const Color kBase = Color(0xff009688);
const Color kGrey = Color(0xff3C435A);
const Color kGreyLight = Color(0xffF3F3F3);
const Color kWhite = Colors.white;



///+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++



/// Image Assets
const String searchDark = "assets/images/material_search_dark.svg";
const String searchInactive = "assets/images/material_search_inactive.svg";
const String searchActive = "assets/images/material_search.svg";
const String homeActive = "assets/images/material_home.svg";
const String homeInactive = "assets/images/material_home_inactive.svg";
const String arrowBack = "assets/images/material_arrow_back.svg";


