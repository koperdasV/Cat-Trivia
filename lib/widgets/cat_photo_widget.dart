import 'package:flutter/material.dart';

class CatPhoto extends StatelessWidget {
  const CatPhoto({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      // width: 280,
      // height: 180,
      child: Image.asset('images/cat.png'),
    );
  }
}
