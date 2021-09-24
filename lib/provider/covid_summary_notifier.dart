import 'dart:convert';
import 'package:flutter/cupertino.dart';
import '../models/country_model.dart';
import '../models/covid_details_model.dart';
import '../web_services/global_summary_service.dart';


class CovidSummaryProvider extends ChangeNotifier{


  late List<CountryDetails> _countryDetailList = [];
  late CovidDetails _globalCovidDetails;
  List<CountryDetails> _searchResult = [];
  String _searchKeyword = "";
  String errorMessage = "";
  bool loaded = false;

  List<CountryDetails> get countryDetailList => _countryDetailList;
  List<CountryDetails> get searchResult => _searchResult;
  CovidDetails get globalDetails => _globalCovidDetails;



  void setKeyword(String keyword){
    _searchKeyword = keyword;
    searchList();
  }


  void searchList(){

    _searchResult = [];

    if(_searchKeyword == ""){
      /// Do nothing & return empty list
    }else{
      /// Return List of Country Objects with the searched Keyword
      for (var element in _countryDetailList) {
        if(element.country.contains(_searchKeyword)){
          _searchResult.add(element);
        }
      }

    }

   notifyListeners();

  }


  void getSummary() async{


      Map<String,dynamic> req = await GlobalSummaryService.getSummary();

      if(req["status"] == 200){

        _globalCovidDetails = CovidDetails.fromJson(jsonDecode(req["response"])["Global"]);

        List<dynamic> rawData = jsonDecode(req["response"])["Countries"];

        _countryDetailList = rawData.map((country) => CountryDetails.fromJson(country)).toList();

        errorMessage = "";
        loaded = true;

      }else{

        loaded = true;
        errorMessage = req["response"]+ " Try again.";

      }


      notifyListeners();

  }


}