import 'package:flutter/material.dart';
import 'package:getchereta/measure/consts.dart';
import 'package:provider/provider.dart';

import '../provider/themes.dart';

class CategoriesIcon extends StatefulWidget {
  const CategoriesIcon({super.key});

  @override
  State<CategoriesIcon> createState() => _CategoriesIconState();
}

class _CategoriesIconState extends State<CategoriesIcon> {
  @override
  Widget build(BuildContext context) {
    // Access the ThemeNotifier instance from the Provider
    final themeNotifier = Provider.of<ThemeNotifier>(context);

    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Padding(
        padding: EdgeInsets.fromLTRB(
            AppSizes.largeGap, 0, AppSizes.largeGap, 0),
        child: Row(
          children: [
            Column(
              children: [
                IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.school,
                        color: const Color.fromRGBO(56, 103, 93, 1.0),
                        size: AppSizes.largeIconSize)),
                Text(
                  "Academic",
                  style: TextStyle(
                    color: themeNotifier.isDarkMode ? Colors.white : Colors.black,
                    fontSize: AppSizes.tertiaryFontSize * .85,
                  ),
                )
              ],
            ),
            SizedBox(
              width: AppSizes.largeGap * 1.2,
            ),
            Column(
              children: [
                SizedBox(
                  height: AppSizes.smallGap * 1.6,
                ),
                IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.corporate_fare,
                        color: const Color.fromRGBO(56, 103, 93, 1.0),
                        size: AppSizes.largeIconSize)),
                Text(
                  "Accounting and\nAuditing",
                  style: TextStyle(
                    color: themeNotifier.isDarkMode ? Colors.white : Colors.black,
                    fontSize: AppSizes.tertiaryFontSize * .85,
                  ),
                )
              ],
            ),
            SizedBox(
              width: AppSizes.largeGap * 1.2,
            ),
            Column(
              children: [
                SizedBox(
                  height: AppSizes.smallGap * 1.6,
                ),
                IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.agriculture,
                        color: const Color.fromRGBO(56, 103, 93, 1.0),
                        size: AppSizes.largeIconSize)),
                Text(
                  "Agriculture and\nFarming",
                  style: TextStyle(
                    color: themeNotifier.isDarkMode ? Colors.white : Colors.black,
                    fontSize: AppSizes.tertiaryFontSize * .85,
                  ),
                )
              ],
            ),
            SizedBox(
              width: AppSizes.largeGap * 1.2,
            ),
            Column(
              children: [
                SizedBox(
                  height: AppSizes.smallGap * 1.6,
                ),
                IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.airplane_ticket,
                        color: const Color.fromRGBO(56, 103, 93, 1.0),
                        size: AppSizes.largeIconSize)),
                Text(
                  "Air \nTicket",
                  style: TextStyle(
                    color: themeNotifier.isDarkMode ? Colors.white : Colors.black,
                    fontSize: AppSizes.tertiaryFontSize * .85,
                  ),
                )
              ],
            ),
            SizedBox(
              width: AppSizes.largeGap * 1.2,
            ),
            Column(
              children: [
                SizedBox(
                  height: AppSizes.smallGap * 1.6,
                ),
                IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.money,
                    color: const Color.fromRGBO(56, 103, 93, 1.0),
                    size: AppSizes.largeIconSize,
                  ),
                ),
                Text(
                  "Finance",
                  style: TextStyle(
                    color: themeNotifier.isDarkMode ? Colors.white : Colors.black,
                    fontSize: AppSizes.tertiaryFontSize * .85,
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
