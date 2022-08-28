import 'package:flutter/material.dart';

class HistoryButton extends StatelessWidget {
  final VoidCallback onPressed;
  final String icon;
  const HistoryButton({
    Key? key,
    required this.onPressed,
    required this.icon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 60,
      height: 60,
      child: OutlinedButton(
        style: ButtonStyle(
          padding: MaterialStateProperty.all(const EdgeInsets.all(0)),
          shape: MaterialStateProperty.all(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(16),
            ),
          ),
        ),
        onPressed: onPressed,
        child: Image.asset(icon),
      ),
    );
  }
}
