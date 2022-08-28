import 'package:flutter/material.dart';

import '../../constants.dart';

class ButtonWidget extends StatefulWidget {
  final String text;
  final VoidCallback onPressed;
  const ButtonWidget({
    Key? key,
    required this.text,
    required this.onPressed,
  }) : super(key: key);

  @override
  State<ButtonWidget> createState() => _ButtonWidgetState();
}

class _ButtonWidgetState extends State<ButtonWidget> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      // height: 50,
      // width: 250,
      child: ElevatedButton(
        style: ButtonStyle(
          padding: MaterialStateProperty.all(const EdgeInsets.all(0)),
          shape: MaterialStateProperty.all(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(16),
            ),
          ),
        ),
        onPressed: widget.onPressed,
        child: Ink(
          width: 255,
          padding: const EdgeInsets.all(10),
          decoration: kPrimaryButton,
          child: Text(
            widget.text,
            textAlign: TextAlign.center,
            style: const TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w300,
                color: Colors.white,
                fontFamily: 'Angkor'),
          ),
        ),
      ),
    );
  }
}
