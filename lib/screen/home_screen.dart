import 'package:cat_trivia/screen/history_screen.dart';
import 'package:cat_trivia/widgets/button_widget.dart';
import 'package:cat_trivia/widgets/cat_photo_widget.dart';
import 'package:cat_trivia/widgets/fact_widget.dart';
import 'package:cat_trivia/widgets/history_button.dart';
import 'package:flutter/material.dart';
import '../../domain/api/api_client.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        const Flexible(
          flex: 2,
          child: CatPhoto(),
        ),
        const Flexible(
          flex: 1,
          child: FactWidget(
              fact:
                  'Cats spend nearly 1/3 of their waking hours cleaning themselves.'),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ButtonWidget(
              text: 'Get Another Fact',
              onPressed: () {},
            ),
            const SizedBox(width: 15),
            const HistoryButton()
          ],
        )
      ],
    );
    /*FutureBuilder<List<Cats>>(
      future: ApiClient().getCats(ApiClient().client),
      builder: (context, snapshot) {
        if (snapshot.hasError) {
          return const Center(
            child:*/

    //       );
    //     } else if (snapshot.hasData) {
    //       return const CatPhoto();
    //     } else {
    //       return const Center(
    //         child: CircularProgressIndicator(),
    //       );
    //     }
    //   },
    // );
  }
}
