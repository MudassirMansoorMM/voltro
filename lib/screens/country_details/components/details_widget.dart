import 'package:flutter/material.dart';
import '/../models/covid_details_model.dart';
import '../../../config.dart';
import '../../../global_resources.dart';

class Details extends StatelessWidget {
  final CovidDetails covidDetails;
  const Details({Key? key, required this.covidDetails}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return  SingleChildScrollView(

      child: Padding(
        padding:  EdgeInsets.all(kPadding),
        child: Column(children: [

          Row(children: [

            Expanded(
                child: verticalTile("TOTAL CASES", covidDetails.totalConfirmed)
            ),

            Expanded(
                child: verticalTile("TOTAL DEATHS", covidDetails.totalDeaths)
            ),

          ],),

          SizedBox(height: kPadding * 2,),

          Row(children: [

            Expanded(
                child: verticalTile("NEW CASES", covidDetails.newConfirmed)
            ),

            Expanded(
                child: verticalTile("NEW DEATHS", covidDetails.newDeaths)
            ),

          ],),

          SizedBox(height: kPadding * 2,),

          Row(children: [

            Expanded(
                child: verticalTile("NEW RECOVERED", covidDetails.newRecovered)
            ),

            Expanded(
                child: verticalTile("TOTAL RECOVERED", covidDetails.totalRecovered)
            ),

          ],),

        ],),
      ),
    );

  }


  Column verticalTile(String label, int value) {

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(label),
        SizedBox(height: kPadding/4,),
        Text(value.toString(),style: TextStyle(fontSize: SizeConfig.height * 2.2),),
      ],);

  }

}
