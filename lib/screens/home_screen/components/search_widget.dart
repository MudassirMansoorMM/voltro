import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:provider/provider.dart';
import '/custom_widgets/custom_list_tile.dart';
import '/models/country_model.dart';
import '/provider/covid_summary_notifier.dart';
import '../../../global_resources.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Scaffold(

      /// App bar with Search Bar
      appBar: AppBar(

        elevation: 0,

        title: TextFormField(

          autofocus: true,
          cursorColor: Colors.pink,

          /// Trigger Search with current keyword
          onChanged: (val) =>
              Provider.of<CovidSummaryProvider>(context,listen:false).setKeyword(val),

          decoration: InputDecoration(
            prefixIcon: Padding(padding: EdgeInsets.all(kPadding), child: SvgPicture.asset(searchDark)),
            contentPadding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
            hintText: 'Search',
            fillColor: kGrey.withOpacity(.085),
            filled: true,
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(5),
              borderSide: const BorderSide(
                width: 0,
                style: BorderStyle.none,
              ),
            ),
          ),
        ),
      ),


      /// Search Result List
      body: Consumer<CovidSummaryProvider>(

        builder: (c, provider , k){

          return

            provider.searchResult.isEmpty ?

            Center(child: Text(provider.errorMessage),) :

            ListView.builder(

              itemCount: provider.searchResult.length,
              itemBuilder: (BuildContext context, int i){

                CountryDetails countryDetails = provider.searchResult[i];
                return countryListItem(context,countryDetails);

              }
          );
          },
      )
    );

  }




}
