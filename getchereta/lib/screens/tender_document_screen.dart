import 'package:flutter/material.dart';
import 'package:getchereta/components/box_with_text.dart';
import 'package:getchereta/components/document_detail_box.dart';
import 'package:getchereta/components/my_nav_bar.dart';
import 'package:getchereta/screens/filter_page.dart';
import 'package:google_fonts/google_fonts.dart';

import '../measure/consts.dart';
import 'categories_screens/art_category_details.dart';
import 'search_screen.dart';

class TenderDocument extends StatelessWidget {
  const TenderDocument({super.key});

  @override
  Widget build(BuildContext context) {
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
            Center(
              child: Text(
                "Tenders with Documents",
                style: TextStyle(
                  fontSize: AppSizes.secondaryFontSize,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
            ),
            SizedBox(
              height: AppSizes.mediumGap,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                const BoxWithText(),
                IconButton(onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const FilterPage()));
                }, icon: const Icon(Icons.filter_alt))
              ],
            ),
            SizedBox(
              height: AppSizes.mediumGap,
            ),
            GestureDetector(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const ArtCategoryDetails()));
                },
                child: const DocumentDetailBox()),
            const DocumentDetailBox(
              imagePath: "images/chereta1.png",
              title: "Another different title to bid #2",
              companyName: "Abyssinia Bank",
              deadlineText: "2 days remaining",
              price: "350",
              size: "625 KB",
            ),
            const DocumentDetailBox(
              imagePath: "images/chereta3.jpg",
              title: "Another different title to bid #3",
              companyName: "Oromia Bank",
              deadlineText: "13 days remaining",
              price: "150",
              size: "1022 KB",
            )
          ],
        ),
      )),
      bottomNavigationBar: const MyNavBar(index: 2),
    );
  }
}
