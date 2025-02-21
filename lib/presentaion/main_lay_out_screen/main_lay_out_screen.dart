import 'package:flutter/material.dart';
import 'package:ieee_ecommerce/presentaion/home_screen/home_screen.dart';
import 'package:ieee_ecommerce/presentaion/providers/bottom_nav_provider.dart';
import 'package:ieee_ecommerce/presentaion/search_screen/search_screen.dart';
import 'package:ieee_ecommerce/presentaion/setting_screen/setting_screen.dart';
import 'package:provider/provider.dart';

class MainLayOutScreen extends StatelessWidget {
  MainLayOutScreen({super.key});

  List<Widget> screens = [HomeScreen(), SearchScreen(), SettingScreen()];

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => BottomNavProvider(),
      child: Consumer<BottomNavProvider>(
        builder: (context, btnProvider, child) {
          return Scaffold(
            body: screens[btnProvider.getCurrentIndex],
            bottomNavigationBar: BottomNavigationBar(
                onTap: (value) {
                  btnProvider.setNewIndex(value);
                },
                items: [
                  BottomNavigationBarItem(
                      icon: Icon(Icons.home), label: 'Home'),
                  BottomNavigationBarItem(
                      icon: Icon(Icons.search), label: 'Search'),
                  BottomNavigationBarItem(
                      icon: Icon(Icons.settings), label: 'Setting'),
                ]),
          );
        },
      ),
    );
  }
}
