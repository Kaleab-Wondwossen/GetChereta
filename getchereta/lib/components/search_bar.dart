import 'package:flutter/material.dart';
import 'package:getchereta/measure/consts.dart';
import 'package:google_fonts/google_fonts.dart';

class MySearchBar extends StatefulWidget {
  const MySearchBar({super.key});

  @override
  State<MySearchBar> createState() => _MySearchBarState();
}

class _MySearchBarState extends State<MySearchBar> {
  // Controller to handle the input text
  final TextEditingController _searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Container(
      height: AppSizes.largeGap * 1.5,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(AppSizes.mediumGap * .5),
        color: const Color.fromARGB(255, 212, 212, 212),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            child: TextField(
              controller: _searchController, // Controller for the input field
              style: GoogleFonts.acme(
                fontSize: AppSizes.tertiaryFontSize,
                color: const Color.fromARGB(255, 76, 76, 76),
              ),
              decoration: InputDecoration(
                hintText: "Title, Keyword or Phrases",
                hintStyle: GoogleFonts.acme(
                  fontSize: AppSizes.tertiaryFontSize,
                  color: const Color.fromARGB(255, 76, 76, 76),
                ),
                border: InputBorder.none, // Removes the underline border
                contentPadding: const EdgeInsets.symmetric(horizontal: 16.0), // Adds padding for better visual alignment
              ),
            ),
          ),
          IconButton(
            onPressed: () {
              // Action to perform on search
              print('Search for: ${_searchController.text}');
            },
            icon: const Icon(
              Icons.search,
              color: Color.fromRGBO(56, 103, 93, 1.0),
            ),
            iconSize: AppSizes.mediumIconSize,
          ),
        ],
      ),
    );
  }

  @override
  void dispose() {
    _searchController.dispose(); // Dispose the controller when the widget is disposed
    super.dispose();
  }
}
