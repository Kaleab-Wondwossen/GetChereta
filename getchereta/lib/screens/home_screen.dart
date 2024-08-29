import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import '../components/dash_detail.dart';
import '../components/my_carousel_slider.dart';
import '../components/my_categories.dart';
import '../components/my_nav_bar.dart';
import '../components/my_recent_tendors.dart';
import '../measure/consts.dart';
import '../provider/themes.dart';
import 'filter_page.dart';
import 'search_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  @override
  Widget build(BuildContext context) {
    AppSizes.init(context);
    final themeNotifier = Provider.of<ThemeNotifier>(context);
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Text(
          "GetChereta",
          style: GoogleFonts.acme(
            fontSize: AppSizes.primaryFontSize,
            fontWeight: FontWeight.bold,
            color: const Color.fromRGBO(56, 103, 93, 1.0),
          ),
        ),
        actions: [
          IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.notifications,
                color: Color.fromRGBO(56, 103, 93, 1.0),
              )),
          SizedBox(
            width: AppSizes.smallGap,
          ),
          IconButton(
              onPressed: () {
                Navigator.push(
                  context,
                  PageRouteBuilder(
                    pageBuilder: (context, animation, secondaryAnimation) =>
                        const SearchPage(),
                    transitionsBuilder:
                        (context, animation, secondaryAnimation, child) {
                      return ScaleTransition(
                        scale: animation,
                        child: child,
                      );
                    },
                  ),
                );
              },
              icon: const Icon(
                Icons.search,
                color: Color.fromRGBO(56, 103, 93, 1.0),
              )),
        ],
      ),
      body: SafeArea(
          child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: AppSizes.smallGap,
            ),
            const MyCarouselSlider(),
            SizedBox(
              height: AppSizes.mediumGap,
            ),
            const DashDetails(),
            SizedBox(
              height: AppSizes.mediumGap,
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(0, 0, AppSizes.largeGap * 6, 0),
              child: Text(
                "Popular Categories...",
                style: TextStyle(
                  fontSize: AppSizes.tertiaryFontSize,
                  fontWeight: FontWeight.bold,
                  color: const Color.fromRGBO(56, 103, 93, 1.0),
                ),
              ),
            ),
            const CategoriesIcon(),
            SizedBox(
              height: AppSizes.mediumGap * .5,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Padding(
                  padding: EdgeInsets.fromLTRB(0, 0, AppSizes.smallGap, 0),
                  child: Text(
                    "Show More>",
                    style: TextStyle(
                      fontSize: AppSizes.tertiaryFontSize * .85,
                      color: const Color.fromRGBO(210, 148, 52, 1),
                      decoration: TextDecoration.underline,
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: AppSizes.mediumGap * .5,
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(
                  AppSizes.smallGap * 2, 0, AppSizes.smallGap, 0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Recent Tendors",
                    style: TextStyle(
                      fontSize: AppSizes.tertiaryFontSize,
                      fontWeight: FontWeight.bold,
                      color: themeNotifier.isDarkMode ? Colors.white : Colors.black,
                    ),
                  ),
                  IconButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const FilterPage()));
                    },
                    icon: const Icon(
                      Icons.filter_alt,
                      color: Color.fromRGBO(56, 103, 93, 1.0),
                    ),
                    iconSize: AppSizes.mediumIconSize,
                  )
                ],
              ),
            ),
            SizedBox(
              height: AppSizes.mediumGap * .7,
            ),
            const RecentTendors(),
            SizedBox(
              height: AppSizes.mediumGap,
            ),
            const RecentTendors(
              title: "Invitation for Bid\t\t\t\t\t\t\nBID No.\nTREU/001/2017",
              imagePath: "images/chereta2.jpg",
              deadlineText: "Dead Line 12 day\nleft",
              companyName: "Bank of Abyssinia",
            )
          ],
        ),
      )),
      bottomNavigationBar: const MyNavBar(index: 0),
    );
  }
}
