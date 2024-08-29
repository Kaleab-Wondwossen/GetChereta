import 'package:flutter/material.dart';
import 'package:getchereta/components/search_bar.dart';
import 'package:getchereta/screens/categories_screens/art_category_details.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../components/my_recent_tendors.dart';
import '../../measure/consts.dart';
import '../search_screen.dart';

class ArtCategory extends StatefulWidget {
  const ArtCategory({super.key});

  @override
  State<ArtCategory> createState() => _ArtCategoryState();
}

class _ArtCategoryState extends State<ArtCategory> {
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
                // Navigator.push(
                //     context,
                //     MaterialPageRoute(
                //         builder: (context) => const SearchPage()));
                // Navigator.push(
                //   context,
                //   PageRouteBuilder(
                //     pageBuilder: (context, animation, secondaryAnimation) =>
                //         const SearchPage(),
                //     transitionsBuilder:
                //         (context, animation, secondaryAnimation, child) {
                //       const begin = Offset(-1.0, 0.0);
                //       const end = Offset.zero;
                //       const curve = Curves.ease;

                //       var tween = Tween(begin: begin, end: end)
                //           .chain(CurveTween(curve: curve));
                //       var offsetAnimation = animation.drive(tween);

                //       return SlideTransition(
                //         position: offsetAnimation,
                //         child: child,
                //       );
                //     },
                //   ),
                // );
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
          child: Center(
        child: Column(
          children: [
            Row(
              children: [
                Padding(
                  padding:
                      EdgeInsets.fromLTRB(AppSizes.mediumGap * .6, 0, 0, 0),
                  child: IconButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    icon: const Icon(
                      Icons.arrow_circle_left_rounded,
                      color: Color.fromRGBO(56, 103, 93, 1.0),
                    ),
                    iconSize: AppSizes.largeIconSize,
                  ),
                ),
                SizedBox(
                  width: AppSizes.mediumGap * 2.5,
                ),
                Text(
                  "Categories->",
                  style: TextStyle(
                    fontSize: AppSizes.primaryFontSize,
                    fontWeight: FontWeight.bold,
                    color: const Color.fromRGBO(56, 103, 93, 1.0),
                  ),
                ),
              ],
            ),
            Text(
              "Art",
              style: TextStyle(
                fontSize: AppSizes.primaryFontSize,
                fontWeight: FontWeight.bold,
                color: const Color.fromRGBO(56, 103, 93, 1.0),
              ),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(
                  AppSizes.mediumGap, 0, AppSizes.mediumGap, 0),
              child: const MySearchBar(),
            ),
            SizedBox(
              height: AppSizes.mediumGap * .7,
            ),
            GestureDetector(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const ArtCategoryDetails()));
                },
                child: const RecentTendors()),
            SizedBox(
              height: AppSizes.mediumGap,
            ),
            const RecentTendors(
              title: "Invitation for\nBid BID No.\nTREU/001/2017",
              imagePath: "images/chereta2.jpg",
              deadlineText: "Dead Line 12 day\nleft",
              companyName: "Bank of Abyssinia",
            )
          ],
        ),
      )),
    );
  }
}
