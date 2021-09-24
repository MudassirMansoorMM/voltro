import 'package:flutter/material.dart';
import '../models/country_model.dart';
import '../screens/country_details/country_details_screen.dart';
import '../global_resources.dart';



Widget countryListItem(BuildContext context,CountryDetails countryDetails) {

  return Column(

    children: [

      const Divider(color: kGrey),

      InkWell(
        onTap: ()=> navigateToDetails(context, countryDetails),
        child: Container(
          margin: EdgeInsets.symmetric(horizontal : kPadding/2 ),
          padding: EdgeInsets.all(kPadding/2),
          child: Row(children: [
            Text(countryDetails.country),
            const Spacer(),
            Text(countryDetails.details.totalConfirmed.toString(), style: const TextStyle(fontWeight: FontWeight.bold),),
            SizedBox(width: kPadding,)

          ],),
        ),
      ),
    ],
  );
}


/// Trigger Navigate to Details Screen
void navigateToDetails(BuildContext context, CountryDetails countryDetails){

  Navigator.push(context,
      MaterialPageRoute(
          builder: (BuildContext context) => CountryDetailsScreen(countryDetails: countryDetails
          )
      )
  );

}
