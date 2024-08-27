import 'package:flutter/material.dart';
import 'package:getchereta/measure/consts.dart';

class BidDetails extends StatelessWidget {
  const BidDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: AppSizes.largeGap*4,
      decoration: BoxDecoration(
        color: Color.fromARGB(255, 218, 242, 207),
        borderRadius: BorderRadius.all(Radius.circular(AppSizes.smallGap)),
      ),
      child: Text("\n\t\tBid closing date: 23 April 2023 @04:00 PM\n\t\tBid opening date: No Specific Opening Date   \n\t\t\tand \n\t\tTimePublished on: 07 April 2023Posted: 06\n\t\t\tApril 2023", style: TextStyle(
        fontSize: AppSizes.tertiaryFontSize,
        color: Colors.black,
        letterSpacing: 0.5,
        fontWeight: FontWeight.bold,
      ),),
    );
  }
}