import 'package:flutter/material.dart';
import 'package:getchereta/measure/consts.dart';

class CategoriesIcon extends StatelessWidget {
  const CategoriesIcon({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Padding(
        padding:
            EdgeInsets.fromLTRB(AppSizes.largeGap, 0, AppSizes.largeGap, 0),
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
                    color: Colors.black,
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
                    color: Colors.black,
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
                    color: Colors.black,
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
                    color: Colors.black,
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
                    color: Colors.black,
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
