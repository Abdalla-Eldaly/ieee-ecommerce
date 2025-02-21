import 'package:flutter/material.dart';

class SettingItem extends StatelessWidget {
  const SettingItem({super.key, this.onPressed, required this.iconData, required this.text});

  final void Function()? onPressed ;
  final IconData iconData;
  final String text;
  @override
  Widget build(BuildContext context) {
    return         Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        IconButton(
            onPressed:onPressed ,
            icon: Icon(iconData)),
        Text(text),
        Spacer(),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Icon(Icons.arrow_forward_ios_rounded),
        ),
      ],
    );
  }
}
