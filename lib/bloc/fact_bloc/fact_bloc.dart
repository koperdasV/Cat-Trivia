import 'package:cat_trivia/bloc/fact_bloc/fact_event.dart';
import 'package:cat_trivia/bloc/fact_bloc/fact_state.dart';
import 'package:cat_trivia/data/repositories/fact_repository.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class FactBloc extends Bloc<FactEvent, FactState> {
  final FactRepository _factRepository;

  FactBloc(this._factRepository) : super(FactLoadingState()) {
    on<LoadFactEvent>(((event, emit) async {
      emit(FactLoadingState());
      try {
        final fact = await _factRepository.getFact();
        emit(FactLoadedState(fact));
      } catch (e) {
        emit(FactErrorState(e.toString()));
      }
    }));
  }
}
