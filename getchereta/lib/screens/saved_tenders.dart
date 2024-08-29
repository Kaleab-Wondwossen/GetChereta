import 'package:flutter/material.dart';
import 'package:getchereta/components/box_with_text.dart';
import 'package:getchereta/components/my_nav_bar.dart';
import 'package:getchereta/components/saved_tenders.dart';
import 'package:getchereta/screens/filter_page.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

import '../measure/consts.dart';
import '../provider/themes.dart';
import 'savedTenders/organisational_saved_tenders.dart';

class SavedTenders extends StatelessWidget {
  const SavedTenders({super.key});

  @override
  Widget build(BuildContext context) {
    final themeNotifier = Provider.of<ThemeNotifier>(
      context,
    );
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Padding(
          padding: EdgeInsets.fromLTRB(0, 0, AppSizes.largeGap * 7, 0),
          child: Text(
            "GetChereta",
            style: GoogleFonts.acme(
              fontSize: AppSizes.primaryFontSize,
              fontWeight: FontWeight.bold,
              color: const Color.fromRGBO(56, 103, 93, 1.0),
            ),
          ),
        ),
      ),
      body: SafeArea(
          child: Column(
        children: [
          Center(
            child: Text(
              "Saved Tenders",
              style: TextStyle(
                fontSize: AppSizes.secondaryFontSize * 1.3,
                color: themeNotifier.isDarkMode ? Colors.white : Colors.black,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          SizedBox(
            height: AppSizes.largeGap,
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(
                AppSizes.mediumGap, 0, AppSizes.smallGap, 0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const BoxWithText(
                  text: "Find Saved Tenders",
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
            height: AppSizes.largeGap,
          ),
          GestureDetector(
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) =>
                          const OrganisationalSavedTenders()));
            },
            child: Padding(
              padding: EdgeInsets.all(AppSizes.mediumGap * .9),
              child: SavedTendersContainers(
                backgroundColor: themeNotifier.isDarkMode
                    ? const Color.fromRGBO(32, 32, 32, 2)
                    : const Color.fromARGB(255, 232, 232, 232),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.all(AppSizes.mediumGap * .9),
            child:  SavedTendersContainers(
              imagePath: "images/chereta1.png",
              category: "Financial  Tenders",
              backgroundColor:themeNotifier.isDarkMode? const Color.fromARGB(255, 166, 189, 182): const Color.fromARGB(255, 210, 220, 217),
            ),
          ),
          Padding(
            padding: EdgeInsets.all(AppSizes.mediumGap * .9),
            child: SavedTendersContainers(
              imagePath: "images/chereta3.jpg",
              category: "Insurance Services",
              backgroundColor: themeNotifier.isDarkMode
                  ? const Color.fromRGBO(32, 32, 32, 2)
                  : const Color.fromARGB(255, 232, 232, 232),
            ),
          )
        ],
      )),
      bottomNavigationBar: const MyNavBar(index: 3),
    );
  }
}
