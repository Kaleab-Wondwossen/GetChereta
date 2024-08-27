import 'package:flutter/material.dart';
import 'package:getchereta/components/my_bid_details.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../measure/consts.dart';
import '../search_screen.dart';

class ArtCategoryDetails extends StatefulWidget {
  const ArtCategoryDetails({super.key});

  @override
  State<ArtCategoryDetails> createState() => _ArtCategoryDetailsState();
}

class _ArtCategoryDetailsState extends State<ArtCategoryDetails> {
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
        child: Center(
          child: Column(
            children: [
              Padding(
                  padding:
                      EdgeInsets.fromLTRB(0, 0, AppSizes.mediumGap * 16, 0),
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
              Text(
                "Tender Details",
                style: GoogleFonts.acme(
                  fontSize: AppSizes.primaryFontSize,
                  color: Colors.black,
                ),
              ),
              SizedBox(
                height: AppSizes.smallGap,
              ),
              Padding(
                padding: EdgeInsets.all(AppSizes.smallGap),
                child: Text(
                  "Ed Dev Trust/TARGET invites qualified firms to submit technical and financial proposals to evaluate the implementation, achievement of objectives, and impact as per the contractual agreement of each implementing partner",
                  style: TextStyle(
                    fontSize: AppSizes.tertiaryFontSize,
                    fontWeight: FontWeight.bold,
                    color: const Color.fromRGBO(56, 103, 93, 1.0),
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(
                    AppSizes.mediumGap, 0, AppSizes.mediumGap, 0),
                child: const BidDetails(),
              ),
              SizedBox(
                height: AppSizes.smallGap,
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(0,0, AppSizes.largeGap*5,0),
                child: Text(
                  "Final Project Evaluation",
                  style: TextStyle(
                    fontSize: AppSizes.tertiaryFontSize,
                    color: const Color.fromRGBO(56, 103, 93, 1.0),
                  ),
                ),
              ),
              SizedBox(
                height: AppSizes.smallGap,
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(0,0, AppSizes.largeGap*7.2,0),
                child: Text(
                  "Introduction",
                  style: TextStyle(
                    fontSize: AppSizes.tertiaryFontSize,
                    color: const Color.fromRGBO(56, 103, 93, 1.0),
                  ),
                ),
              ), 
              Padding(
                padding: EdgeInsets.all(AppSizes.mediumGap*1.5),
                child: Text("Education Development Trust is implementing a project (TARGET - Technical Assistance to Reinforce General Education Quality Improvement Programme for Equity, GEQIP-E) funded by the Foreign and Commonwealth Development Office (FCDO) in Ethiopia. The project provides support to the Ministry of Education (MoE) and Regional Education Bureaus (REBS) to strengthen the delivery of the World Bank GEQIP-E 'Programme for Results' (P4R) aimed at addressing the\"learning crisis\".\n\nEducation Development Trust is seeking a consultancy firm to conduct a final evaluation of the Equitable School Improvement Fund (ESIF) Project implemented in 6 regions of Ethiopia including Afar, Amhara, Benishangul Gumuz, Gambella, Oromiya, and Somali. The overall purpose of this service is to evaluate", style: TextStyle(
                  fontSize: AppSizes.tertiaryFontSize,
                  color: Colors.black,
                ),),
              )
            ],
          ),
        ),
      )),
    );
  }
}
