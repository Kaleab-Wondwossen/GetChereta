// import 'package:flutter/material.dart';
// import 'package:getchereta/screens/home_screen.dart';

// void main() {
//   runApp(const MyApp());
// }

// class MyApp extends StatelessWidget {
//   const MyApp({super.key});

//   // This widget is the root of your application.
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//         // theme: lightTheme(),
//         // darkTheme: darkTheme(),
//         // themeMode: ThemeMode.system,
//         debugShowCheckedModeBanner: false,
//         home: const HomeScreen());
//   }

//   ThemeData lightTheme() {
//     return ThemeData(
//       brightness: Brightness.light,
//       primaryColor: Colors.blue,
//       hintColor: Colors.blueAccent,
//       backgroundColor: Colors.white,
//       scaffoldBackgroundColor: Colors.white,
//       textTheme: const TextTheme(
//         headline1: TextStyle(fontSize: 24.0, color: Colors.black),
//         bodyText1: TextStyle(fontSize: 14.0, color: Colors.black),
//       ),
//       iconTheme: const IconThemeData(color: Colors.black),
//       buttonTheme: const ButtonThemeData(buttonColor: Colors.blue),
//       // Add other light theme configurations
//     );
//   }

//   ThemeData darkTheme() {
//     return ThemeData(
//       brightness: Brightness.dark,
//       primaryColor: Colors.teal,
//       hintColor: Colors.tealAccent,
//       backgroundColor: Colors.black,
//       scaffoldBackgroundColor: Colors.black,
//       // textTheme: const TextTheme(
//       //   headline1: TextStyle(fontSize: 24.0, color: Colors.white),
//       //   bodyText1: TextStyle(fontSize: 14.0, color: Colors.white),
//       // ),
//       // iconTheme: const IconThemeData(color: Colors.white),
//       // buttonTheme: const ButtonThemeData(buttonColor: Colors.teal),
//       // Add other dark theme configurations
//     );
//   }
// }

// import 'package:flutter/material.dart';
// import 'package:getchereta/screens/home_screen.dart';
// import 'package:provider/provider.dart';
// import 'provider/themes.dart';

// void main() {
//   runApp(
//     ChangeNotifierProvider(
//       create: (context) => ThemeNotifier(),
//       child: const MyApp(),
//     ),
//   );
// }

// class MyApp extends StatelessWidget {
//   const MyApp({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Consumer<ThemeNotifier>(
//       builder: (context, themeNotifier, child) {
//         return MaterialApp(
//           debugShowCheckedModeBanner: false,
//           title: 'Flutter Demo',
//           theme: ThemeData.light(), // Light theme data
//           darkTheme: ThemeData.dark(), // Dark theme data
//           themeMode: themeNotifier.themeMode, // Use the theme mode from the provider
//           home: const HomeScreen(), // Your initial page
//         );
//       },
//     );
//   }
// }

import 'package:flutter/material.dart';
import 'package:getchereta/screens/home_screen.dart';
import 'package:provider/provider.dart';
import 'provider/themes.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (context) => ThemeNotifier(),
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<ThemeNotifier>(
      builder: (context, themeNotifier, child) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Flutter Demo',
          theme: ThemeData.light(), // Light theme data
          darkTheme: ThemeData.dark(), // Dark theme data
          themeMode: themeNotifier.themeMode, // Use the theme mode from the provider
          home: const HomeScreen(), // Your initial page
        );
      },
    );
  }
}


