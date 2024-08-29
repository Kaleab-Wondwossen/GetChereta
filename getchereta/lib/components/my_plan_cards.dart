import 'package:flutter/material.dart';
import 'package:getchereta/measure/consts.dart';
import 'package:getchereta/provider/themes.dart';
import 'package:provider/provider.dart';

class PlanCard extends StatelessWidget {
  final String title;
  final String price;
  final String description;

  const PlanCard({super.key, 
    required this.title,
    required this.price,
    required this.description,
  });

  @override
  Widget build(BuildContext context) {
    final themeNotifier = Provider.of<ThemeNotifier>(
      context,
    );
    return Container(
      constraints: const BoxConstraints(
        minWidth: 200,
        maxWidth: 300, // You can adjust the max width as needed
      ),
      padding: EdgeInsets.all(AppSizes.mediumGap),
      decoration: BoxDecoration(
        color: themeNotifier.isDarkMode
                        ? const Color.fromARGB(255, 52, 52, 52)
                        : const Color.fromARGB(255, 216, 216, 216),
        borderRadius: BorderRadius.circular(12.0),
        border: Border(
          left: BorderSide(
            color: const Color.fromRGBO(56, 103, 93, 1.0),
            width: AppSizes.smallGap * .3,
          ),
        ),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            title,
            style: TextStyle(
              fontSize: AppSizes.primaryFontSize,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height:AppSizes.mediumGap),
          Container(
            padding: EdgeInsets.symmetric(vertical: AppSizes.mediumGap, horizontal: AppSizes.mediumGap*2),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(12.0),
            ),
            child: Text(
              price,
              style: TextStyle(
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
                color: Colors.grey[800],
              ),
            ),
          ),
          SizedBox(height: AppSizes.mediumGap),
          Text(
            description,
            style: TextStyle(
              fontSize: 16.0,
              color: themeNotifier.isDarkMode ? Colors.white : Colors.grey[700],
            ),
            textAlign: TextAlign.center,
          ),
          SizedBox(height: AppSizes.mediumGap),
          ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
              backgroundColor: const Color.fromRGBO(56, 103, 93, 1.0),
              padding: EdgeInsets.symmetric(horizontal: AppSizes.largeGap, vertical: AppSizes.mediumGap),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12.0),
              ),
            ),
            child: Text("Sign up", style: TextStyle(
              fontSize: AppSizes.secondaryFontSize,
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),),
          ),
        ],
      ),
    );
  }
}