import 'package:cat_trivia/bloc/fact_bloc/fact_bloc.dart';
import 'package:cat_trivia/bloc/fact_bloc/fact_event.dart';
import 'package:cat_trivia/bloc/fact_bloc/fact_state.dart';
import 'package:cat_trivia/widgets/button_widget.dart';
import 'package:cat_trivia/widgets/cat_photo_widget.dart';
import 'package:cat_trivia/widgets/fact_widget.dart';
import 'package:cat_trivia/widgets/history_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lottie/lottie.dart';

import 'history_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _imageVersion = 1;

  Future<void> _refreshImage() async {
    //call API & update the image
    _imageVersion++;
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocBuilder<FactBloc, FactState>(
        builder: (context, state) {
          if (state is FactLoadingState) {
            return Center(
              child: SizedBox(
                width: 350,
                height: 350,
                child: LottieBuilder.network(
                  'https://assets4.lottiefiles.com/packages/lf20_OT15QW.json',
                ),
              ),
            );
          }
          if (state is FactLoadedState) {
            return Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Flexible(
                  flex: 2,
                  child: CatPhoto(
                    imageUrl: 'https://cataas.com/cat',
                    imageVersion: _imageVersion,
                  ),
                ),
                Flexible(
                  flex: 2,
                  child: FactWidget(fact: state.fact.text),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 150),
                  child: FactWidget(
                    fact: state.fact.createdAt.substring(0, 10),
                    fontSize: 18,
                    color: Colors.grey,
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ButtonWidget(
                      text: 'Get Another Fact',
                      onPressed: () {
                        _refreshImage();
                        BlocProvider.of<FactBloc>(context).add(LoadFactEvent());
                      },
                    ),
                    const SizedBox(width: 15),
                    HistoryButton(
                      icon: 'images/history.png',
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const HistoryScreen()));
                      },
                    )
                  ],
                )
              ],
            );
          }
          if (state is FactErrorState) {
            return Center(
              child: Text(state.error.toString()),
            );
          }
          return const Center(child: FactWidget(fact: 'error'));
        },
      ),
    );
  }
}
