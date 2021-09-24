import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '/provider/covid_summary_notifier.dart';
import '/screens/home_screen/home.dart';
import 'styling.dart';
import 'config.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return LayoutBuilder(

        builder: (context,constraints){

          return OrientationBuilder(


            builder: (context, orientation){

            SizeConfig().init(constraints,orientation);

            return MultiProvider(

                providers: [
                  ChangeNotifierProvider(create: (_) => CovidSummaryProvider()),
                ],

                child:MaterialApp(
                  debugShowCheckedModeBanner: false,
                  title: 'Flutter Demo',
                  theme: AppTheme.lightTheme,
                  initialRoute: '/',
                  routes: {
                    '/': (context) => const HomeScreen(),
                  },
                )

            );
          },
        );
      },
    );
  }
}