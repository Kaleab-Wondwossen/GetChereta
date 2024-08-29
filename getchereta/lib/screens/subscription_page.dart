import 'package:flutter/material.dart';
import 'package:getchereta/components/my_plan_cards.dart';
import 'package:getchereta/measure/consts.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

import '../provider/themes.dart';

class SubscriptionPages extends StatefulWidget {
  const SubscriptionPages({super.key});

  @override
  State<SubscriptionPages> createState() => _SubscriptionPagesState();
}

class _SubscriptionPagesState extends State<SubscriptionPages> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Padding(
          padding:  EdgeInsets.fromLTRB(0,0,AppSizes.largeGap*6,0),
          child: Text(
            'GetChereta',
            style: GoogleFonts.acme(
                fontSize: AppSizes.primaryFontSize,
                fontWeight: FontWeight.bold,
                color: const Color.fromRGBO(56, 103, 93, 1.0),),
          ),
        ),
      ),
      body: SafeArea(
          child: SingleChildScrollView(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                height: AppSizes.largeGap * 2,
              ),
              Padding(
                padding: EdgeInsets.all(AppSizes.mediumGap),
                child: Text(
                    "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy.", style: TextStyle(
                      fontSize: AppSizes.tertiaryFontSize,
                      fontWeight: FontWeight.bold,
                    ), textAlign: TextAlign.center,),
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Padding(
                  padding: EdgeInsets.all(AppSizes.mediumGap),
                  child: Row(
                    children: [
                       const PlanCard(
                        title: "Basic",
                        price: "Free",
                        description:
                            "Lorem ipsum dolor sit amet adipiscing elit sed do eiusmod tempor labore et dolore magna siad enim aliqua",
                      ),
                      SizedBox(
                        width: AppSizes.mediumGap,
                      ),
                      const PlanCard(
                        title: "Standard",
                        price: "\$12/month",
                        description:
                            "Lorem ipsum dolor sit amet adipiscing elit sed do eiusmod tempor labore et dolore magna siad enim aliqua.\nLorem ipsum dolor sit amet adipiscing elit sed do eiusmod tempor labore et dolore magna siad enim aliqua",
                      ),
                      SizedBox(
                        width: AppSizes.mediumGap,
                      ),
                      const PlanCard(
                        title: "Premium",
                        price: "\$20/month",
                        description:
                            "Lorem ipsum dolor sit amet adipiscing elit sed do eiusmod tempor labor.",
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      )),
    );
  }
}
