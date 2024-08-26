import 'package:flutter/material.dart';

class MyDrawer extends StatefulWidget {
  const MyDrawer({super.key});

  @override
  State<MyDrawer> createState() => _MyDrawerState();
}

class _MyDrawerState extends State<MyDrawer> {
  // ignore: unused_field
  ThemeMode _themeMode = ThemeMode.system;

  void _toggleThemeMode(ThemeMode themeMode) {
    setState(() {
      _themeMode = themeMode;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          const DrawerHeader(
            decoration: BoxDecoration(
              color: Color.fromARGB(255, 233, 176, 64),
            ),
            child: Text(
              'More from GetChreta',
              style: TextStyle(
                color: Colors.black,
                fontSize: 24,
              ),
            ),
          ),
           IconButton(
              icon: const Icon(Icons.light_mode),
              onPressed: () => _toggleThemeMode(ThemeMode.light),
            ),
            IconButton(
              icon: const Icon(Icons.dark_mode),
              onPressed: () => _toggleThemeMode(ThemeMode.dark),
            ),
            IconButton(
              icon: const Icon(Icons.brightness_4),
              onPressed: () => _toggleThemeMode(ThemeMode.system),
            ),])
    );
  }
}
