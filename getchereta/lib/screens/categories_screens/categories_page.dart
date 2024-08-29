import 'package:flutter/material.dart';
import 'package:getchereta/components/my_nav_bar.dart';
import 'package:getchereta/components/my_tender_categories.dart';
import 'package:getchereta/provider/themes.dart';
import 'package:getchereta/screens/categories_screens/art_category.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

import '../../measure/consts.dart';
import '../search_screen.dart';

class CategoriesPage extends StatefulWidget {
  const CategoriesPage({super.key});

  @override
  State<CategoriesPage> createState() => _CategoriesPageState();
}

class _CategoriesPageState extends State<CategoriesPage> {
  @override
  Widget build(BuildContext context) {
    final themeNotifier = Provider.of<ThemeNotifier>(
      context,
    );

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
            Text(
              "Browse Tenders->",
              style: TextStyle(
                fontSize: AppSizes.primaryFontSize,
                fontWeight: FontWeight.bold,
                color: themeNotifier.isDarkMode ? Colors.white : Colors.black,
              ),
            ),
            Text(
              "Categories",
              style: TextStyle(
                fontSize: AppSizes.primaryFontSize,
                fontWeight: FontWeight.bold,
                color: const Color.fromRGBO(56, 103, 93, 1.0),
              ),
            ),
            SizedBox(
              height: AppSizes.mediumGap,
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const ArtCategory()));
              },
              child: Padding(
                padding: EdgeInsets.fromLTRB(
                    AppSizes.largeGap, 0, AppSizes.largeGap, 0),
                child: MyTenderCategories(
                  backgroundColor: themeNotifier.isDarkMode
                      ? const Color.fromARGB(255, 32, 32, 32)
                      : const Color.fromARGB(255, 216, 216, 216),
                ),
              ),
            ),
            SizedBox(
              height: AppSizes.mediumGap,
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(
                  AppSizes.largeGap, 0, AppSizes.largeGap, 0),
              child: const MyTenderCategories(
                backgroundColor: Color.fromARGB(255, 56, 103, 93),
                icon: Icons.school,
                categoryName: "A C A D E M I C",
                tenderCount: "9 Tenders",
                borderColor: Color.fromARGB(255, 207, 205, 205),
                textColors: Colors.white,
                categoryColor: Colors.white,
              ),
            ),
            SizedBox(
              height: AppSizes.mediumGap,
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(
                  AppSizes.largeGap, 0, AppSizes.largeGap, 0),
              child: MyTenderCategories(
                icon: Icons.agriculture,
                categoryName: "A G R I C U L T U R E",
                tenderCount: "2 Tenders",
                backgroundColor: themeNotifier.isDarkMode
                      ? const Color.fromARGB(255, 32, 32, 32)
                      : const Color.fromARGB(255, 216, 216, 216),
              ),
            ),
            SizedBox(
              height: AppSizes.mediumGap,
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(
                  AppSizes.largeGap, 0, AppSizes.largeGap, 0),
              child: const MyTenderCategories(
                backgroundColor: Color.fromARGB(255, 56, 103, 93),
                icon: Icons.account_balance_wallet,
                categoryName: "A C C O U N T I N G",
                tenderCount: "13 Tenders",
                borderColor: Color.fromARGB(255, 207, 205, 205),
                textColors: Colors.white,
                categoryColor: Colors.white,
              ),
            ),
          ],
        ),
      )),
      bottomNavigationBar: const MyNavBar(index: 1),
    );
  }
}
