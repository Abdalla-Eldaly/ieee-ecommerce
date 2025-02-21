import 'package:flutter/material.dart';
import 'package:ieee_ecommerce/presentaion/providers/theme_provider.dart';
import 'package:ieee_ecommerce/presentaion/setting_screen/setting_item.dart';
import 'package:provider/provider.dart';

class SettingScreen extends StatelessWidget {
  const SettingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final themeProvider = Provider.of<ThemeProvider>(context);
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SettingItem(
            onPressed: () {
              themeProvider.setThemeMode(themeProvider.isDarkThemeMode
                  ? ThemeMode.light
                  : ThemeMode.dark);
            },
            iconData: themeProvider.isDarkThemeMode
                ? Icons.dark_mode
                : Icons.light_mode,
            text: 'Change Theme')
      ],
    );
  }
}
