import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '/models/country_model.dart';
import '../../global_resources.dart';
import 'components/details_widget.dart';
import 'components/header_widget.dart';



class CountryDetailsScreen extends StatelessWidget {
  final CountryDetails countryDetails;

  const CountryDetailsScreen({Key? key,required this.countryDetails}) : super(key: key);


  @override
  Widget build(BuildContext context) {


    return Scaffold(

      appBar: AppBar(
        elevation: 0,
        leading: IconButton(
          icon: SvgPicture.asset(arrowBack),
          onPressed: () => Navigator.of(context).pop(),
        ),
        backgroundColor: kBase,
        iconTheme:const IconThemeData(color: kWhite),
      ),

      body: Column(children: [

        /// Header
        Expanded(
            flex: 3,
            child: Header(countryName: countryDetails.country)
        ),

        ///Body or Details widgets
        Expanded(
            flex: 7,
            child: Details(covidDetails: countryDetails.details,)
        )


      ],),

    );


  }






}
