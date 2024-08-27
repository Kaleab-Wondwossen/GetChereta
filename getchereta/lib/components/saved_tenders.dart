import 'package:flutter/material.dart';
import 'package:getchereta/measure/consts.dart';

class SavedTendersContainers extends StatefulWidget {
  final String category;
  final String imagePath;
  final String deadlineText;
  final String numberOfTenders;
  final String detailsText;
  final Color backgroundColor;
  const SavedTendersContainers({
    super.key,
    this.category = "Organization Tenders",
    this.imagePath = "images/chereta2.jpg",
    this.deadlineText = "Dead Line 1 day ago",
    this.numberOfTenders = "4 tenders saved",
    this.detailsText = "Details",
    this.backgroundColor =  const Color.fromRGBO(232, 232, 232, 1),
  });

  @override
  State<SavedTendersContainers> createState() => _SavedTendersContainersState();
}

class _SavedTendersContainersState extends State<SavedTendersContainers> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: AppSizes.largeGap*3,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(AppSizes.mediumGap)),
        color: widget.backgroundColor,
        border: Border(
          left: BorderSide(
            color: const Color.fromRGBO(56, 103, 93, 1.0),
            width: AppSizes.smallGap * .3,
          ),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          SizedBox(
            width: AppSizes.smallGap*.0000001,
          ),
          Image.asset(
            widget.imagePath,
            width: AppSizes.smallIconSize * 5,
            height: AppSizes.smallIconSize * 5,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                widget.category,
                style: TextStyle(
                  fontSize: AppSizes.secondaryFontSize,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                widget.numberOfTenders,
                style: TextStyle(
                  fontSize: AppSizes.tertiaryFontSize,
                  color: const Color.fromRGBO(56, 103, 93, 1.0),
                ),
              )
            ],
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.double_arrow,
              color: Color.fromRGBO(56, 103, 93, 1.0),
            ),
            iconSize: AppSizes.mediumIconSize,
          )
        ],
      ),
    );
  }
}
