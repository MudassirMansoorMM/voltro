import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:provider/provider.dart';
import '/provider/covid_summary_notifier.dart';
import '../../../global_resources.dart';
import 'components/home_widget.dart';
import 'components/search_widget.dart';


class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}



class _HomeScreenState extends State<HomeScreen> {

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance!.addPostFrameCallback((_) => Provider.of<CovidSummaryProvider>(context,listen: false).getSummary());
  }

  PageController pageController = PageController(initialPage: 0);


  @override
  Widget build(BuildContext context) {


    return Consumer<CovidSummaryProvider>(
      builder: (c, provider , w){

        return Scaffold(

            /// Navigation Bar
            bottomNavigationBar: BottomNavigationBar(
              elevation: 4,
              showUnselectedLabels: false,
              showSelectedLabels: false,
              selectedItemColor: kWhite,
              unselectedItemColor: kWhite.withOpacity(.5),
              backgroundColor: kBase,
              currentIndex: selectedTab,
              onTap: (index)=>refresh(index),
              items:  [
                BottomNavigationBarItem(icon: SvgPicture.asset(selectedTab == 0 ? homeActive : homeInactive),label: "Home"),
                BottomNavigationBarItem(icon: SvgPicture.asset(selectedTab == 1 ? searchActive : searchInactive),label: "Search")
              ],
            ),



            body: PageView(
              physics: const NeverScrollableScrollPhysics(),
              controller: pageController,

              children: const [

                /// Home Screen with Global Summary
                Home(),

                /// Search Screen
                SearchScreen()

              ],
            )

        );
      }
    );


  }


  /// Refresh Tab & Screens method
  refresh(int index) {
    setState(() {
      selectedTab = index;
      pageController.jumpToPage(selectedTab);
    });
  }


}
