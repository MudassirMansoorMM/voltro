import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '/custom_widgets/custom_list_tile.dart';
import '/models/country_model.dart';
import '/../provider/covid_summary_notifier.dart';
import '../../../global_resources.dart';




class Home extends StatelessWidget {

  const Home({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context, ) {

    return Consumer<CovidSummaryProvider>(
      builder: (c ,provider, k){

        return Scaffold(

          appBar:  AppBar(
            elevation: 0,
            title: Row(
              children: [
                const Text("WORLD"),
                const Spacer(),

                (provider.loaded && provider.globalDetails!=null)
                    ?
                Text(provider.globalDetails.totalConfirmed.toString()) : Container(),

                SizedBox(width: kPadding,)
              ],
            ),
          ),


          body:

          !provider.loaded ?

          /// Show Loader un till data is loaded
          const Center(child: CircularProgressIndicator( color: kBase,)) :

          provider.errorMessage != "" ?

          /// Show Error if there is an error message
          Center(child: Text(provider.errorMessage),):


          /// If loaded and no error show List
          Container(

            decoration: circularEdges(0, 0, 0, 0, kWhite),

            child: ListView.builder(
                itemCount: provider.countryDetailList.length,
                itemBuilder: (BuildContext context, int i){

                  CountryDetails countryDetails = provider.countryDetailList[i];

                  return countryListItem(context, countryDetails);

                }
            ),
          ),
        );
      },
    );


  }

}
