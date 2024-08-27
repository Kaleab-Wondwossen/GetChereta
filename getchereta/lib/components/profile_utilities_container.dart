import 'package:flutter/material.dart';
import 'package:getchereta/measure/consts.dart';

class UtilitiesContainer extends StatelessWidget {
  const UtilitiesContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: AppSizes.mediumGap * 7,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(AppSizes.mediumGap)),
        color: const Color.fromARGB(255, 216, 216, 216),
      ),
      child: Column(
        children: [
          SizedBox(
            height: AppSizes.smallGap,
          ),
          Row(
            children: [
              SizedBox(
                width: AppSizes.smallGap,
              ),
              const Icon(
                Icons.settings,
                color: Color.fromRGBO(56, 103, 93, 1.0),
              ),
              Text(
                '   Settings',
                style: TextStyle(fontSize: AppSizes.tertiaryFontSize),
              ),
              SizedBox(width: AppSizes.mediumGap * 10.8),
              Text(
                '>',
                style: TextStyle(
                    fontSize: AppSizes.tertiaryFontSize,
                    color: Colors.white,
                    fontWeight: FontWeight.bold),
              ),
            ],
          ),
          Divider(
            thickness: AppSizes.smallGap*.25,
            color: Colors.white,
          ),
          Row(
            children: [
              SizedBox(
                width: AppSizes.smallGap,
              ),
              const Icon(
                Icons.download,
                color: Color.fromRGBO(56, 103, 93, 1.0),
              ),
              Text(
                '   Downloads',
                style: TextStyle(fontSize: AppSizes.tertiaryFontSize),
              ),
              SizedBox(width: AppSizes.mediumGap * 10),
              Text(
                '>',
                style: TextStyle(
                    fontSize: AppSizes.tertiaryFontSize,
                    color: Colors.white,
                    fontWeight: FontWeight.bold),
              ),
            ],
          ),
          Divider(
            thickness: AppSizes.smallGap*.25,
            color: Colors.white,
          ),
          Row(
            children: [
              SizedBox(
                width: AppSizes.smallGap,
              ),
              const Icon(
                Icons.policy,
                color: Color.fromRGBO(56, 103, 93, 1.0),
              ),
              Text(
                '   Privacy Policy',
                style: TextStyle(fontSize: AppSizes.tertiaryFontSize),
              ),
              SizedBox(width: AppSizes.mediumGap * 9),
              Text(
                '>',
                style: TextStyle(
                    fontSize: AppSizes.tertiaryFontSize,
                    color: Colors.white,
                    fontWeight: FontWeight.bold),
              ),
            ],
          ),
          Divider(
            thickness: AppSizes.smallGap*.25,
            color: Colors.white,
          ),
          Row(
            children: [
              SizedBox(
                width: AppSizes.smallGap,
              ),
              const Icon(
                Icons.question_mark,
                color: Color.fromRGBO(56, 103, 93, 1.0),
              ),
              Text(
                '   FAQs',
                style: TextStyle(fontSize: AppSizes.tertiaryFontSize),
              ),
              SizedBox(width: AppSizes.mediumGap * 11.6),
              Text(
                '>',
                style: TextStyle(
                    fontSize: AppSizes.tertiaryFontSize,
                    color: Colors.white,
                    fontWeight: FontWeight.bold),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
