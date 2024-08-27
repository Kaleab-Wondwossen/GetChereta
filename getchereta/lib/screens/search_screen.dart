import 'package:flutter/material.dart';
import 'package:getchereta/measure/consts.dart';
import 'package:google_fonts/google_fonts.dart';

import '../components/search_bar.dart';

class SearchPage extends StatelessWidget {
  const SearchPage({super.key});

  @override
  Widget build(BuildContext context) {
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
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.fromLTRB(AppSizes.mediumGap*.6, 0, 0, 0),
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
          Padding(
            padding: EdgeInsets.fromLTRB(AppSizes.mediumGap,0,AppSizes.mediumGap,0),
            child: const MySearchBar(),
          ),
        ],
      ),
    );
  }
}
