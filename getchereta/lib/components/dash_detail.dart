import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:getchereta/provider/themes.dart';

import '../measure/consts.dart';

class DashDetails extends StatefulWidget {
  const DashDetails({super.key});

  @override
  State<DashDetails> createState() => _DashDetailsState();
}

class _DashDetailsState extends State<DashDetails> {
  @override
  Widget build(BuildContext context) {
    // Access the ThemeNotifier instance from the Provider
    final themeNotifier = Provider.of<ThemeNotifier>(context);
    
    AppSizes.init(context);

    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(AppSizes.smallGap * 2),
        color: themeNotifier.isDarkMode
            ? const Color.fromARGB(255, 32, 32, 32)
            : const Color.fromRGBO(232, 232, 232, 1),
      ),
      height: AppSizes.smallGap * 5.5,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          CircleAvatar(
            radius: AppSizes.smallGap * 2,
            backgroundImage: const AssetImage('images/profile.jpg'),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: AppSizes.smallGap,
              ),
              Text(
                "2905",
                style: TextStyle(
                    fontSize: AppSizes.tertiaryFontSize,
                    fontWeight: FontWeight.bold,
                    color: const Color.fromRGBO(210, 148, 52, 1)),
              ),
              Text(
                "Tenders Posted",
                style: TextStyle(
                    fontSize: AppSizes.tertiaryFontSize,
                    // fontWeight: FontWeight.bold,
                    color: const Color.fromRGBO(56, 103, 93, 1)),
              )
            ],
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: AppSizes.smallGap,
              ),
              Text(
                "540",
                style: TextStyle(
                    fontSize: AppSizes.tertiaryFontSize,
                    fontWeight: FontWeight.bold,
                    color: const Color.fromRGBO(210, 148, 52, 1)),
              ),
              Text(
                "Different Companies",
                style: TextStyle(
                    fontSize: AppSizes.tertiaryFontSize,
                    // fontWeight: FontWeight.bold,
                    color: const Color.fromRGBO(56, 103, 93, 1)),
              )
            ],
          )
        ],
      ),
    );
  }
}
