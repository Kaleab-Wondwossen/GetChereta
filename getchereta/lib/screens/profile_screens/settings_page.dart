import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../provider/themes.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Settings'),
      ),
      body: ListTile(
        title: const Text('Dark Mode'),
        trailing: Consumer<ThemeNotifier>(
          builder: (context, themeNotifier, child) {
            return Switch(
              value: themeNotifier.isDarkMode,
              onChanged: (value) {
                themeNotifier.isDarkMode = value;
              },
            );
          },
        ),
      ),
    );
  }
}
