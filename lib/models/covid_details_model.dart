

class CovidDetails {

  late final int newConfirmed;
  late final int totalConfirmed;
  late final int newDeaths;
  late final int totalDeaths;
  late final int newRecovered;
  late final int totalRecovered;



  CovidDetails({
    required this.newConfirmed,
    required this.totalConfirmed,
    required this.newDeaths,
    required this.totalDeaths,
    required this.newRecovered,
    required this.totalRecovered,
  });



  CovidDetails.fromJson(Map<String, dynamic> json){
    newConfirmed = json['NewConfirmed'];
    totalConfirmed = json['TotalConfirmed'];
    newDeaths = json['NewDeaths'];
    totalDeaths = json['TotalDeaths'];
    newRecovered = json['NewRecovered'];
    totalRecovered = json['TotalRecovered'];
  }


}