import 'package:cat_trivia/bloc/fact_bloc/fact_bloc.dart';
import 'package:cat_trivia/bloc/fact_bloc/fact_event.dart';
import 'package:cat_trivia/bloc/fact_bloc/fact_state.dart';
import 'package:cat_trivia/data/repositories/fact_repository.dart';
import 'package:cat_trivia/widgets/app_bar.dart';
import 'package:cat_trivia/widgets/button_widget.dart';
import 'package:cat_trivia/widgets/cat_photo_widget.dart';
import 'package:cat_trivia/widgets/fact_widget.dart';
import 'package:cat_trivia/widgets/history_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => FactBloc(RepositoryProvider.of<FactRepository>(context),)..add(LoadFactEvent()),
      child: Scaffold(
        appBar: CustomAppBar(),
        body: BlocBuilder<FactBloc, FactSate>(
      builder: (context, state) {
        if (state is FactLoadingState) {
          return const Center(
            child: CircularProgressIndicator(),
          );
        }
        if (state is FactLoadedState) {
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              const Flexible(
                flex: 2,
                child: CatPhoto(),
              ),
              Flexible(
                flex: 1,
                child: FactWidget(fact: state.fact.text),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ButtonWidget(
                    text: 'Get Another Fact',
                    onPressed: () {
                      BlocProvider.of<FactBloc>(context).add(LoadFactEvent());
                    },
                  ),
                  const SizedBox(width: 15),
                  const HistoryButton()
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
      ),
    );
    
  }
}
