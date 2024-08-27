import 'package:flutter/material.dart';
import 'package:getchereta/components/my_nav_bar.dart';
import 'package:getchereta/components/profile_personal_info_container.dart';
import 'package:getchereta/screens/login_screen.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../components/profile_utilities_container.dart';
import '../../measure/consts.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(
            Icons.arrow_circle_left_rounded,
            color: Color.fromRGBO(56, 103, 93, 1.0),
          ),
          iconSize: AppSizes.largeIconSize,
        ),
        automaticallyImplyLeading: false,
        title: Text(
          "GetChereta",
          style: GoogleFonts.acme(
            fontSize: AppSizes.primaryFontSize,
            fontWeight: FontWeight.bold,
            color: const Color.fromRGBO(56, 103, 93, 1.0),
          ),
        ),
      ),
      body: SafeArea(
          child: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              SizedBox(
                height: AppSizes.smallGap,
              ),
              CircleAvatar(
                radius: AppSizes.mediumGap * 2.5,
                backgroundImage: const AssetImage('images/profile.jpg'),
              ),
              SizedBox(
                height: AppSizes.smallGap,
              ),
              Text(
                "John Doe",
                style: TextStyle(
                    fontSize: AppSizes.primaryFontSize,
                    fontWeight: FontWeight.bold,
                    color: Colors.black),
              ),
              Text(
                "Active Since : Aug 21 2013",
                style: TextStyle(
                  fontSize: AppSizes.tertiaryFontSize,
                  color: Colors.grey,
                ),
              ),
              SizedBox(
                height: AppSizes.mediumGap,
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(
                    AppSizes.mediumGap, 0, AppSizes.smallGap, 0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Personal Information",
                      style: TextStyle(
                          fontSize: AppSizes.secondaryFontSize * .85,
                          fontWeight: FontWeight.bold,
                          color: Colors.black),
                    ),
                    Padding(
                      padding:
                          EdgeInsets.fromLTRB(AppSizes.largeGap * 3.6, 0, 0, 0),
                      child: Text(
                        "Edit",
                        style: TextStyle(
                          fontSize: AppSizes.tertiaryFontSize,
                          color: const Color.fromRGBO(56, 103, 93, 1.0),
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.edit,
                        color: Color.fromRGBO(56, 103, 93, 1.0),
                      ),
                      iconSize: AppSizes.smallIconSize,
                    )
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.all(AppSizes.mediumGap),
                child: const PersonalInfoContainer(),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(0, 0, AppSizes.mediumGap * 13, 0),
                child: Text("Utitlities",
                    style: TextStyle(
                        fontSize: AppSizes.secondaryFontSize * .85,
                        fontWeight: FontWeight.bold,
                        color: Colors.black)),
              ),
              Padding(
                padding: EdgeInsets.all(AppSizes.mediumGap),
                child: const UtilitiesContainer(),
              ),
              Container(
                  height: AppSizes.mediumGap * 2.5,
                  width: AppSizes.largeGap * 10,
                  decoration: BoxDecoration(
                    borderRadius:
                        BorderRadius.all(Radius.circular(AppSizes.smallGap)),
                    color: const Color.fromARGB(255, 216, 216, 216),
                  ),
                  child: GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const LoginScreen()));
                    },
                    child: Row(
                      children: [
                        SizedBox(
                          width: AppSizes.mediumGap,
                        ),
                        Icon(
                          Icons.logout,
                          size: AppSizes.mediumIconSize,
                          color: Colors.red,
                        ),
                        SizedBox(
                          width: AppSizes.smallGap,
                        ),
                        Text("Logout",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: AppSizes.secondaryFontSize,
                              color: Colors.red,
                            ))
                      ],
                    ),
                  )),
            ],
          ),
        ),
      )),
      bottomNavigationBar: const MyNavBar(index: 4),
    );
  }
}
