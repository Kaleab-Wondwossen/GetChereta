import 'package:flutter/material.dart';
import 'package:getchereta/components/my_nav_bar.dart';
import 'package:getchereta/components/search_bar.dart';
import 'package:getchereta/screens/home_screen.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:getchereta/measure/consts.dart';
import 'package:provider/provider.dart';

import '../../provider/themes.dart'; // Adjust the path if necessary

class OrganisationalSavedTenders extends StatefulWidget {
  const OrganisationalSavedTenders({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _OrganisationalSavedTendersState createState() =>
      _OrganisationalSavedTendersState();
}

class _OrganisationalSavedTendersState
    extends State<OrganisationalSavedTenders> {
  bool selectAll = false;
  List<bool> selectedTenders =
      List<bool>.generate(5, (index) => false); // Example with 5 items

  void toggleSelectAll(bool? value) {
    setState(() {
      selectAll = value ?? false;
      for (int i = 0; i < selectedTenders.length; i++) {
        selectedTenders[i] = selectAll;
      }
    });
  }

  void toggleTenderSelection(int index, bool? value) {
    setState(() {
      selectedTenders[index] = value ?? false;
      selectAll = selectedTenders.every((isSelected) => isSelected);
    });
  }

  @override
  Widget build(BuildContext context) {
    final themeNotifier = Provider.of<ThemeNotifier>(
      context,
    );
    return Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          title: Padding(
            padding: EdgeInsets.fromLTRB(0, 0, AppSizes.largeGap * 7, 0),
            child: Text(
              "GetChereta",
              style: GoogleFonts.acme(
                fontSize: AppSizes.primaryFontSize,
                fontWeight: FontWeight.bold,
                color: const Color.fromRGBO(56, 103, 93, 1.0),
              ),
            ),
          ),
        ),
        body: Column(
          children: [
            // Title Section
            Padding(
              padding: EdgeInsets.symmetric(horizontal: AppSizes.mediumGap),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding:
                        EdgeInsets.fromLTRB(0, 0, AppSizes.mediumGap * 22, 0),
                    child: IconButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      icon: const Icon(
                        Icons.arrow_circle_left_rounded,
                        color: Color.fromRGBO(56, 103, 93, 1.0),
                      ),
                      iconSize: AppSizes.largeIconSize,
                    ),
                  ),
                  Text(
                    'Saved ->',
                    style: GoogleFonts.acme(
                      fontSize: AppSizes.secondaryFontSize * 1.3,
                      fontWeight: FontWeight.bold,
                      color: const Color.fromRGBO(56, 103, 93, 1.0),
                    ),
                  ),
                  Text(
                    'Organizational Tenders',
                    style: GoogleFonts.acme(
                      fontSize: AppSizes.secondaryFontSize * 1.3,
                      fontWeight: FontWeight.bold,
                      color: themeNotifier.isDarkMode
                          ? Colors.white
                          : Colors.black,
                    ),
                  ),
                ],
              ),
            ),
            // Search Bar
            Padding(
              padding: EdgeInsets.all(AppSizes.mediumGap),
              child: const MySearchBar(),
            ),
            // Tenders List
            Expanded(
              child: ListView.builder(
                itemCount: selectedTenders.length + 1,
                itemBuilder: (context, index) {
                  if (index == 0) {
                    // Top checkbox to select all
                    return ListTile(
                      leading: Checkbox(
                        value: selectAll,
                        onChanged: toggleSelectAll,
                        activeColor: const Color.fromRGBO(56, 103, 93, 1.0),
                      ),
                      title: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Title',
                            style: TextStyle(
                              fontSize: AppSizes.secondaryFontSize,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            'Deadlines',
                            style: TextStyle(
                              fontSize: AppSizes.secondaryFontSize,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    );
                  } else {
                    // Individual tender list item
                    return Padding(
                      padding: EdgeInsets.symmetric(
                          horizontal: AppSizes.mediumGap,
                          vertical: AppSizes.smallGap),
                      child: Row(
                        children: [
                          Checkbox(
                            value: selectedTenders[index - 1],
                            onChanged: (value) =>
                                toggleTenderSelection(index - 1, value),
                            activeColor: const Color.fromRGBO(56, 103, 93, 1.0),
                          ),
                          Expanded(
                            child: Container(
                              padding: EdgeInsets.all(AppSizes.smallGap),
                              decoration: BoxDecoration(
                                color: themeNotifier.isDarkMode
                                    ? const Color.fromARGB(32, 32, 32, 0)
                                    : Colors.white,
                                borderRadius: BorderRadius.circular(
                                    AppSizes.mediumGap * .5),
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.grey.withOpacity(0.5),
                                    spreadRadius: 1,
                                    blurRadius: 5,
                                    offset: const Offset(0, 3),
                                  ),
                                ],
                              ),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Invitation to bid international competitive bidding',
                                    style: TextStyle(
                                      fontSize: AppSizes.secondaryFontSize,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  Text(
                                    'Siinge Bank Share Company',
                                    style: TextStyle(
                                      fontSize: AppSizes.tertiaryFontSize,
                                      color: Colors.grey,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          SizedBox(width: AppSizes.smallGap),
                          Container(
                            width: 100,
                            padding: EdgeInsets.all(AppSizes.smallGap),
                            decoration: BoxDecoration(
                              color: themeNotifier.isDarkMode
                                  ? const Color.fromRGBO(45, 45, 45, 1)
                                  : Colors.white,
                              borderRadius: BorderRadius.circular(
                                  AppSizes.mediumGap * .5),
                            ),
                            child: Column(
                              children: [
                                Text(
                                  'June 16, 2024',
                                  style: TextStyle(
                                    fontSize: AppSizes.tertiaryFontSize,
                                    color: Colors.red,
                                  ),
                                ),
                                IconButton(
                                  icon: const Icon(Icons.delete,
                                      color: Colors.red),
                                  onPressed: () {
                                    // Handle delete action
                                  },
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    );
                  }
                },
              ),
            ),
          ],
        ),
        bottomNavigationBar: const MyNavBar(index: 3));
  }
}
