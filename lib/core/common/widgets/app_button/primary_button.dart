import 'package:flixgo/core/constant/constant.dart';
import 'package:flutter/material.dart';

class PrimaryButton extends StatelessWidget {
  const PrimaryButton({
    super.key,
    required this.title,
    required this.textColor,
    required this.backgroundButton,
    required this.fontWeight,
    required this.onTap,
    this.height = 70,
    this.width = 300,
    this.fontSize = 28,
    this.enableFeedback = false,
  });

  final String title;
  final double height, width, fontSize;
  final Color textColor, backgroundButton;
  final FontWeight fontWeight;
  final void Function() onTap;
  final bool enableFeedback;

  @override
  Widget build(BuildContext context) {
    return Material(
      child: InkWell(
        enableFeedback: enableFeedback,
        onTap: onTap,
        splashColor: Colors.grey.withOpacity(0.4),
        child: Container(
          height: height,
          width: width,
          alignment: Alignment.center,
          color: backgroundButton,
          child: Text(
            title,
            style: TextStyle(
              color: textColor,
              fontSize: fontSize,
              fontWeight: fontWeight,
            ),
          ),
        ),
      ),
    );
  }
}
