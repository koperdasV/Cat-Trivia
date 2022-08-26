import 'package:flutter/material.dart';

class HistoryButton extends StatelessWidget {
  const HistoryButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 50,
      height: 50,
      child: OutlinedButton(
        style: ButtonStyle(
          padding: MaterialStateProperty.all(const EdgeInsets.all(0)),
          shape: MaterialStateProperty.all(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(16),
            ),
          ),
        ),
        onPressed: () {
          //   Navigator.pushReplacement(
          //       context,
          //       MaterialPageRoute(
          //           builder: (context) => const HistoryScreen()));
        },
        child: Image.asset('images/history.png'),
      ),
    );
  }
}
