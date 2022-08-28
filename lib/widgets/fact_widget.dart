import 'package:flutter/material.dart';

class FactWidget extends StatelessWidget {
  const FactWidget({
    Key? key,
    required this.fact,
    this.fontSize = 24, this.color= const Color.fromRGBO(69, 161, 227, 1),
  }) : super(key: key);

  final String fact;
  final double? fontSize;
  final Color? color;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 31),
      child: Text(
        fact,
        maxLines: 15,
        style: TextStyle(
            fontSize: fontSize,
            fontFamily: 'Angkor',
            color: color),
      ),
    );
  }
}
