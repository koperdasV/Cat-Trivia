import 'package:cat_trivia/constants.dart';
import 'package:cat_trivia/screen/home_screen.dart';
import 'package:cat_trivia/widgets/fact_widget.dart';
import 'package:cat_trivia/widgets/history_button.dart';
import 'package:flutter/material.dart';

class HistoryScreen extends StatelessWidget {
  const HistoryScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: Padding(
        padding: const EdgeInsets.only(top: 20, right: 25),
        child: HistoryButton(
          icon: 'images/back.png',
          onPressed: (() {
            Navigator.pop(context,
                MaterialPageRoute(builder: (context) => const HomeScreen()));
          }
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.startTop,
      body: Padding(
        padding: const EdgeInsets.only(top: 110),
        child: ListView.builder(
          itemCount: 5,
          itemBuilder: (context, index) => Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
            child: Container(
              width: 312,
              height: 145,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.white,
                boxShadow: const [
                  BoxShadow(
                    color: Colors.grey,
                    offset: Offset(1.0, 1.0),
                    blurRadius: 10.0,
                  ),
                ],
              ),
              child: const Padding(
                padding: EdgeInsets.only(right: 20, top: 20),
                child: FactWidget(fact: 'Random Fact'),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
