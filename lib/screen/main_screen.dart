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
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: ((context) => FactBloc(
                RepositoryProvider.of<FactRepository>(context),
              )..add(LoadFactEvent())),
        ),
      ],
      child: Scaffold(
        appBar: CustomAppBar(),
        body: const HomeScreen(),
      ),
    );
  }
}
