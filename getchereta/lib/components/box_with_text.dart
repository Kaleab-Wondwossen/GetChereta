import 'package:flutter/material.dart';
import 'package:getchereta/measure/consts.dart';
import 'package:google_fonts/google_fonts.dart';

class BoxWithText extends StatefulWidget {
  final String text;
  final double width;
  const BoxWithText({super.key, this.text = "Find Tender", this.width = 9});

  @override
  State<BoxWithText> createState() => _BoxWithTextState();
}

class _BoxWithTextState extends State<BoxWithText> {
  // Controller to handle the input text
  final TextEditingController _searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Container(
      height: AppSizes.largeGap * 1.5,
      width: AppSizes.largeGap*widget.width,
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
                hintText: widget.text,
                hintStyle: GoogleFonts.acme(
                  fontSize: AppSizes.tertiaryFontSize,
                  color: const Color.fromARGB(255, 76, 76, 76),
                ),
                border: InputBorder.none, // Removes the underline border
                contentPadding: const EdgeInsets.symmetric(horizontal: 16.0), // Adds padding for better visual alignment
              ),
            ),
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
