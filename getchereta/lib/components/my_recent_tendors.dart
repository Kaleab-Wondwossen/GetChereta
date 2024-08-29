import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../measure/consts.dart';
import '../provider/themes.dart';

class RecentTendors extends StatelessWidget {
  final String title;
  final String imagePath;
  final String deadlineText;
  final String companyName;
  final String detailsText;

  const RecentTendors({
    super.key,
    this.title = "Invitation to bid\ninternational\ncompetitive bidding",
    this.imagePath = "images/chereta2.jpg",
    this.deadlineText = "Dead Line 1 day ago",
    this.companyName = "Siinge Bank Share Company",
    this.detailsText = "Details",
  });

  @override
  Widget build(BuildContext context) {
    final themeNotifier = Provider.of<ThemeNotifier>(context);
    AppSizes.init(context);
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(AppSizes.mediumGap)),
        color: themeNotifier.isDarkMode
            ? const Color.fromARGB(255, 32, 32, 32)
            : const Color.fromRGBO(232, 232, 232, 1),
        border: Border(
          left: BorderSide(
            color: const Color.fromRGBO(56, 103, 93, 1.0),
            width: AppSizes.smallGap * .3,
          ),
        ),
      ),
      width: AppSizes.largeGap * 10.5,
      height: AppSizes.smallGap * 5.5 * 2.5,
      child: Column(
        children: [
          Row(
            children: [
              SizedBox(
                width: AppSizes.mediumGap * .7,
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(0, 0, 0, AppSizes.mediumGap),
                child: Image.asset(
                  imagePath,
                  width: AppSizes.smallIconSize * 5,
                  height: AppSizes.smallIconSize * 5,
                ),
              ),
              SizedBox(width: AppSizes.mediumGap),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: AppSizes.smallGap,
                  ),
                  Row(
                    children: [
                      Text(
                        title,
                        style: TextStyle(
                          fontSize: AppSizes.tertiaryFontSize,
                          fontWeight: FontWeight.bold,
                          color: themeNotifier.isDarkMode ? Colors.white : Colors.black,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.fromLTRB(AppSizes.mediumGap, 0, 0, AppSizes.mediumGap),
                        child: IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.download,
                            size: AppSizes.mediumIconSize,
                            color: const Color.fromRGBO(56, 103, 93, 1.0),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.location_pin,
                          color: Color.fromRGBO(56, 103, 93, 1.0),
                        ),
                        iconSize: AppSizes.mediumIconSize,
                      ),
                      IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.timelapse_rounded,
                          color: Color.fromRGBO(56, 103, 93, 1.0),
                        ),
                        iconSize: AppSizes.mediumIconSize,
                      ),
                      Padding(
                        padding: EdgeInsets.fromLTRB(
                          0, 0, AppSizes.smallGap * .5, 0),
                        child: Text(
                          deadlineText,
                          style: TextStyle(
                            fontSize: AppSizes.tertiaryFontSize,
                            color: const Color.fromRGBO(56, 103, 93, 1.0),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
          SizedBox(
            height: AppSizes.smallGap * .5,
          ),
          Row(
            children: [
              SizedBox(
                width: AppSizes.mediumGap * .5,
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
                child: Container(
                  decoration:  BoxDecoration(
                    color: themeNotifier.isDarkMode ? const Color.fromARGB(255, 32, 32, 32) : const Color.fromRGBO(198, 198, 198, 1),
                    // color: Color.fromRGBO(198, 198, 198, 1),
                  ),
                  height: AppSizes.largeGap * .7,
                  width: AppSizes.largeGap * 6,
                  child: Text(
                    "  $companyName",
                    style: TextStyle(
                      fontSize: AppSizes.tertiaryFontSize,
                      color: const Color.fromRGBO(56, 103, 93, 1.0),
                    ),
                  ),
                ),
              ),
              SizedBox(
                width: AppSizes.largeGap * 2.4,
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
                child: Text(
                  detailsText,
                  style: TextStyle(
                    fontSize: AppSizes.tertiaryFontSize,
                    color: const Color.fromRGBO(56, 103, 93, 1.0),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
