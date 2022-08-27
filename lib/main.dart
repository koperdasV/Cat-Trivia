import 'package:cat_trivia/data/repositories/fact_repository.dart';
import 'package:cat_trivia/screen/home_screen.dart';
import 'package:cat_trivia/screen/main_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: RepositoryProvider(
        create: (context) => FactRepository(),
        child: const HomeScreen(),
      ),
    );
  }
}
