import 'package:flutter/material.dart';
import 'package:getchereta/measure/consts.dart';

class PersonalInfoContainer extends StatelessWidget {
  const PersonalInfoContainer({super.key});

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
                Icons.mobile_friendly,
                color: Color.fromRGBO(56, 103, 93, 1.0),
              ),
              Text(
                '   Phone Number',
                style: TextStyle(fontSize: AppSizes.tertiaryFontSize),
              ),
              SizedBox(width: AppSizes.mediumGap * 3),
              Text(
                '+251 912 456 666',
                style: TextStyle(fontSize: AppSizes.tertiaryFontSize),
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
                Icons.email,
                color: Color.fromRGBO(56, 103, 93, 1.0),
              ),
              Text(
                '   Email',
                style: TextStyle(fontSize: AppSizes.tertiaryFontSize),
              ),
              SizedBox(width: AppSizes.mediumGap * 5.5),
              Text(
                'Jhon.doe@gmail.com',
                style: TextStyle(fontSize: AppSizes.tertiaryFontSize),
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
                Icons.password,
                color: Color.fromRGBO(56, 103, 93, 1.0),
              ),
              Text(
                '   Change Password',
                style: TextStyle(fontSize: AppSizes.tertiaryFontSize),
              ),
              SizedBox(width: AppSizes.mediumGap * 5),
              Text(
                '*********',
                style: TextStyle(fontSize: AppSizes.tertiaryFontSize),
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
                Icons.email,
                color: Color.fromRGBO(56, 103, 93, 1.0),
              ),
              Text(
                '   My Teams',
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
        ],
      ),
    );
  }
}
