import 'package:cat_trivia/bloc/fact_bloc/fact_bloc.dart';
import 'package:cat_trivia/data/repositories/fact_repository.dart';
import 'package:cat_trivia/screen/home_screen.dart';
import 'package:cat_trivia/widgets/app_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../bloc/fact_bloc/fact_event.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(),
      body: BlocProvider(
        create: ((context) => FactBloc(
          RepositoryProvider.of<FactRepository>(context),
        )..add(LoadFactEvent(),)),
        child: const HomeScreen()),
    );
  }
}
/*import 'package:cat_trivia/bloc/fact_bloc/fact_bloc.dart';
import 'package:cat_trivia/bloc/fact_bloc/fact_state.dart';
import 'package:cat_trivia/data/repositories/fact_repository.dart';
import 'package:cat_trivia/screen/home_screen.dart';
import 'package:cat_trivia/widgets/app_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../bloc/fact_bloc/fact_event.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: ((context) => FactBloc(
            RepositoryProvider.of<FactRepository>(context),
          )..add(
              LoadFactEvent(),
            )),
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
              return BlocBuilder<FactBloc, FactSate>(
                builder: ((context, state) => const HomeScreen()),
              );
            }
            if (state is FactErrorState) {
              return Center(
                child: Text(state.error.toString()),
              );
            }
            return Container();
          },
        ),
      ),
    );
  }
}
 */