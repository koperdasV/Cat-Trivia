import 'package:cat_trivia/constants.dart';
import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget with PreferredSizeWidget {
  CustomAppBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return PreferredSize(
        preferredSize: const Size.fromHeight(68),
        child: Container(
          decoration: kPrimaryColor,
          child: const Center(
            child: Padding(
              padding: EdgeInsets.only(top: 40),
              child: Image(image: AssetImage('images/logo.png')),
            ),
          ),
        ));
  }

  @override
  Size get preferredSize => const Size.fromHeight(68);
}
