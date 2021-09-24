import 'package:flutter/material.dart';
import '../../../config.dart';
import '../../../global_resources.dart';



class Header extends StatelessWidget {

  final String countryName;

  const Header({Key? key,required this.countryName}) : super(key: key);



  @override
  Widget build(BuildContext context) {
    return Container(
      color: kBase,

      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Column(
            children: [

              Expanded(
                flex: 2,
                child: Container(),
              ),

              SizedBox(
                  width: SizeConfig.width * 40,
                  child: FittedBox(child: Text(countryName,style:const TextStyle(color: kWhite),))
              ),

              SizedBox(
                  width: SizeConfig.width * 45,
                  child: const FittedBox(child: Text("CORONA STATS OVERVIEW",style: TextStyle(color: kWhite)))
              ),

              Expanded(
                flex: 4,
                child: Container(),
              ),

            ],),
        ],
      ),
    );
  }



}
