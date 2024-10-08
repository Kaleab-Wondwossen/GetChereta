import 'package:flutter/material.dart';
import 'package:getchereta/screens/categories_screens/categories_page.dart';
import 'package:getchereta/screens/home_screen.dart';
import 'package:getchereta/screens/profile_screens/profile_screen.dart';
import 'package:getchereta/screens/saved_tenders.dart';
import 'package:getchereta/screens/tender_document_screen.dart';
import 'package:provider/provider.dart';

import '../provider/themes.dart';

class MyNavBar extends StatefulWidget {
  final int index;
  final Function(int)? onIndexChanged;

  const MyNavBar({super.key, required this.index, this.onIndexChanged});

  @override
  State<MyNavBar> createState() => _MyNavBarState();
}

class _MyNavBarState extends State<MyNavBar> {
  @override
  Widget build(BuildContext context) {
    final themeNotifier = Provider.of<ThemeNotifier>(context,);

    Color unselectedColor = const Color.fromRGBO(56, 103, 93, 1);
    Color selectedColor =
        themeNotifier.isDarkMode ? Colors.white : Colors.black;

    return BottomNavigationBar(
      currentIndex: widget.index,
      unselectedItemColor: unselectedColor,
      selectedItemColor: selectedColor,
      items: const [
        BottomNavigationBarItem(
          icon: Icon(Icons.home_rounded),
          label: 'Home',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.checklist),
          label: 'Category',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.edit),
          label: 'Documents',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.save),
          label: 'Saved',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.person),
          label: 'Profile',
        ),
      ],
      onTap: (index) {
        if (widget.index != index) {
          if (widget.onIndexChanged != null) {
            widget.onIndexChanged!(index);
          }
          switch (index) {
            case 0:
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const HomeScreen()));
              break;
            case 1:
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const CategoriesPage()));
              break;
            case 2:
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const TenderDocument()));
              break;
            case 3:
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const SavedTenders()));
              break;
            case 4:
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const ProfileScreen()));
              break;
          }
        }
      },
    );
  }
}
