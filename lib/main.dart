import 'package:flutter/material.dart';
import 'package:ieee_ecommerce/presentaion/home_screen/home_screen.dart';
import 'package:ieee_ecommerce/presentaion/main_lay_out_screen/main_lay_out_screen.dart';
import 'package:ieee_ecommerce/presentaion/providers/theme_provider.dart';
import 'package:ieee_ecommerce/presentaion/resource/theme_manger.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(ChangeNotifierProvider(
      create: (context) => ThemeProvider(),
      child: IeeeEcommerce()));
}

class IeeeEcommerce  extends StatelessWidget{
  const IeeeEcommerce({super.key});

  @override
  Widget build(BuildContext context) {
    final themeProvider = Provider.of<ThemeProvider>(context);
    return MaterialApp(
      title: 'IEEE',
      theme: ThemeManger.lightTheme,
      darkTheme: ThemeManger.darkTheme,
      themeMode: themeProvider.currentThemeMode,
      home:MainLayOutScreen() ,

    );
  }
}