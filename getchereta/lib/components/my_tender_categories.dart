import 'package:flutter/material.dart';
import 'package:getchereta/measure/consts.dart';

class MyTenderCategories extends StatefulWidget {
  final Color backgroundColor;
  final IconData icon;
  final String categoryName;
  final String tenderCount;
  final Color borderColor;
  final Color textColors;
  final Color categoryColor;

  const MyTenderCategories({
    super.key,
    this.backgroundColor = const Color.fromARGB(255, 216, 216, 216),
    this.icon = Icons.draw_outlined,
    this.categoryName = "A R T",
    this.tenderCount = "3 Tenders",
    this.borderColor = const Color.fromARGB(255, 56, 103, 93),
    this.textColors = Colors.black,
    this.categoryColor = const Color.fromARGB(255, 56, 103, 93),
  });

  @override
  State<MyTenderCategories> createState() => _MyTenderCategoriesState();
}

class _MyTenderCategoriesState extends State<MyTenderCategories> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: AppSizes.largeGap * 5,
      decoration: BoxDecoration(
        color: widget.backgroundColor,
        borderRadius: BorderRadius.all(Radius.circular(AppSizes.smallGap)),
        border: Border(
          bottom: BorderSide(
            color: widget.borderColor,
            width: AppSizes.smallGap * .3,
          ),
        ),
      ),
      child: Center(
        child: Column(
          children: [
            SizedBox(
              height: AppSizes.mediumGap * 1.5,
            ),
            Icon(
              widget.icon,
              color: widget.textColors,
              weight: AppSizes.largeGap,
            ),
            SizedBox(
              height: AppSizes.mediumGap * .5,
            ),
            Text(
              widget.categoryName,
              style: TextStyle(
                  fontSize: AppSizes.primaryFontSize,
                  fontWeight: FontWeight.bold,
                  color: widget.categoryColor),
            ),
            SizedBox(
              height: AppSizes.mediumGap * .5,
            ),
            Text(
              widget.tenderCount,
              style: TextStyle(
                fontSize: AppSizes.tertiaryFontSize,
                fontWeight: FontWeight.normal,
                color: widget.textColors
              ),
            ),
          ],
        ),
      ),
    );
  }
}
