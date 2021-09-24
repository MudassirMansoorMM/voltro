import '../models/covid_details_model.dart';

class CountryDetails {

  late final String country;
  late final String countryCode;
  late final String slug;
  late final String date;
  late final CovidDetails details;



  CountryDetails({
    required this.country,
    required this.countryCode,
    required this.slug,
    required this.date,
    required this.details
  });



  CountryDetails.fromJson(Map<String, dynamic> json){
    country = json['Country'];
    countryCode = json['CountryCode'];
    slug = json['Slug'];
    date = json['Date'];
    details = CovidDetails.fromJson(json);
  }


}