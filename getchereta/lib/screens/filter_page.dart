import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';

import '../measure/consts.dart';

class FilterPage extends StatefulWidget {
  const FilterPage({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _FilterPageState createState() => _FilterPageState();
}

class _FilterPageState extends State<FilterPage> {
  DateTime selectedDate = DateTime(2024, 7, 2);
  double dateSliderValue = 0;
  List<String> categories = [
    'Academic',
    'Art',
    'Agriculture',
    'Accounting',
    'Auditing',
    'System Design'
  ];
  List<bool> selectedCategories = [false, false, false, false, false, false];
  String selectedStatus = '';

  void onDateSliderChanged(double value) {
    setState(() {
      dateSliderValue = value;
      selectedDate =
          DateTime(2024, 7, 2).add(Duration(days: (value * 30).toInt()));
    });
  }

  void onCategoryTap(int index) {
    setState(() {
      selectedCategories[index] = !selectedCategories[index];
    });
  }

  void onStatusTap(String status) {
    setState(() {
      selectedStatus = status;
    });
  }

  @override
  Widget build(BuildContext context) {
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
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                IconButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  icon: const Icon(
                    Icons.arrow_circle_left_rounded,
                    color: Color.fromRGBO(56, 103, 93, 1.0),
                  ),
                  iconSize: AppSizes.largeIconSize,
                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(AppSizes.largeGap*3.3, 0, 0, 0),
                  child: Text(
                    'Filter',
                    style: GoogleFonts.acme(
                      fontSize: AppSizes.primaryFontSize,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: AppSizes.mediumGap),
            Text(
              'Date',
              style: GoogleFonts.acme(
                fontSize: AppSizes.secondaryFontSize,
                fontWeight: FontWeight.bold,
              ),
            ),
            Column(
              children: [
                Slider(
                  value: dateSliderValue,
                  onChanged: onDateSliderChanged,
                  min: 0,
                  max: 1,
                  activeColor: const Color.fromRGBO(56, 103, 93, 1.0),
                  inactiveColor: Colors.grey[300],
                ),
                Text(
                  DateFormat('MMMM d, yyyy').format(selectedDate),
                  style: TextStyle(fontSize: AppSizes.secondaryFontSize),
                ),
              ],
            ),
            SizedBox(height: AppSizes.mediumGap),
            Text(
              'Categories',
              style: GoogleFonts.acme(
                fontSize: AppSizes.secondaryFontSize,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: AppSizes.mediumGap),
            Wrap(
              spacing: 8.0,
              runSpacing: 8.0,
              children: List<Widget>.generate(categories.length, (index) {
                return ChoiceChip(
                  label: Text(
                    categories[index],
                    style: TextStyle(
                      color: selectedCategories[index]
                          ? Colors.white
                          : Colors.black,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  selected: selectedCategories[index],
                  onSelected: (bool selected) {
                    onCategoryTap(index);
                  },
                  selectedColor: const Color.fromRGBO(56, 103, 93, 1.0),
                  backgroundColor: Colors.grey[300],
                );
              }).toList(),
            ),
            SizedBox(height: AppSizes.mediumGap),
            Padding(
              padding: EdgeInsets.fromLTRB(AppSizes.largeGap*8.4,0,0,0),
              child: Text(
                'Show more >>',
                style: GoogleFonts.acme(
                  fontSize: AppSizes.tertiaryFontSize,
                  color: const Color.fromRGBO(56, 103, 93, 1.0),
                ),
              ),
            ),
            SizedBox(height: AppSizes.mediumGap),
            Text(
              'Status',
              style: GoogleFonts.acme(
                fontSize: AppSizes.secondaryFontSize,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: AppSizes.mediumGap),
            Row(
              children: [
                ChoiceChip(
                  label: Text(
                    'Active',
                    style: TextStyle(
                      color: selectedStatus == 'Active'
                          ? Colors.white
                          : Colors.black,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  selected: selectedStatus == 'Active',
                  onSelected: (bool selected) {
                    onStatusTap('Active');
                  },
                  selectedColor: const Color.fromRGBO(56, 103, 93, 1.0),
                  backgroundColor: Colors.grey[300],
                ),
                SizedBox(width: AppSizes.mediumGap),
                ChoiceChip(
                  label: Text(
                    'Closed',
                    style: TextStyle(
                      color: selectedStatus == 'Closed'
                          ? Colors.white
                          : Colors.black,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  selected: selectedStatus == 'Closed',
                  onSelected: (bool selected) {
                    onStatusTap('Closed');
                  },
                  selectedColor: const Color.fromRGBO(56, 103, 93, 1.0),
                  backgroundColor: Colors.grey[300],
                ),
              ],
            ),
            const Spacer(),
            Center(
              child: ElevatedButton(
                onPressed: () {
                  // Apply filter action
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color.fromRGBO(56, 103, 93, 1.0),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 40, vertical: 10),
                  child: Text(
                    'Apply Filter',
                    style: TextStyle(fontSize: AppSizes.secondaryFontSize, color: Colors.white),
                  ),
                ),
              ),
            ),
            SizedBox(height: AppSizes.mediumGap),
          ],
        ),
      ),
    );
  }
}
