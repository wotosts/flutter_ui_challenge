import 'package:flutter/material.dart';

class IconTextButton extends StatelessWidget {
  const IconTextButton(
      {Key? key,
      required this.icon,
      required this.text,
      this.height = 50,
      this.backgroundColor = Colors.transparent,
      this.tint = Colors.white})
      : super(key: key);

  final IconData icon;
  final String text;
  final double height;
  final Color backgroundColor;
  final Color tint;

  @override
  Widget build(BuildContext context) {
    return InkWell(
        child: Container(
            height: height,
            decoration: BoxDecoration(color: backgroundColor, shape: BoxShape.rectangle),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  icon,
                  color: tint,
                ),
                SizedBox(
                  height: 4,
                ),
                Text(
                  text,
                  style: TextStyle(color: tint, fontSize: 12),
                )
              ],
            )));
  }
}
