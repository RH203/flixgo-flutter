import 'package:flutter/material.dart';

class PrimaryButton extends StatelessWidget {
  const PrimaryButton({
    super.key,
    required this.widgetButton,
    required this.onTap,
    required this.backgroundButton,
    this.height = 70,
    this.width = 300,
    this.enableFeedback = false,
  });

  final Color backgroundButton;
  final double height, width;
  final void Function() onTap;
  final bool enableFeedback;
  final Widget widgetButton;

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
          child: widgetButton,
        ),
      ),
    );
  }
}
