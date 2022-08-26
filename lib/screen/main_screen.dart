import 'package:cat_trivia/screen/home_screen.dart';
import 'package:cat_trivia/widgets/app_bar.dart';
import 'package:flutter/material.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  // final ValueNotifier<int> pageIndex = ValueNotifier(0);
  // final catsListModel = CatsModel();

  // void _onNavigationItemSelected(index) {
  //   pageIndex.value = index;
  // }

  // @override
  // void initState() {
  //   super.initState();
  //   catsListModel.loadData();
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(),
      body: const HomeScreen(),
    );
  }
}
