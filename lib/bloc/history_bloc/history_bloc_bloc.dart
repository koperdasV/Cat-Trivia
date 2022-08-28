import 'dart:async';

import 'package:cat_trivia/data/model/hive_model.dart';
import 'package:cat_trivia/data/repositories/info_repository.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'history_bloc_event.dart';
part 'history_bloc_state.dart';

class HistoryBloc extends Bloc<HistoryEvent, HistoryState> {
  final InfoRepository infoRepository;
  HistoryBloc({required this.infoRepository}) : super(HistoryInitial()) {
    on<InitInfoBox>(_initInfoBox);
    on<FetchAllInfoEvent>(_fetchAllInfo);
    on<AddInfoEvent>(_addNewInfo);
  }

  Future<void> _initInfoBox(
      InitInfoBox event, Emitter<HistoryState> emit) async {
    await infoRepository.init();
    add(FetchAllInfoEvent());
  }

  Future<void> _fetchAllInfo(
      FetchAllInfoEvent event, Emitter<HistoryState> emit) async {
    try {
      emit(HistoryLoading());
      final infoList = infoRepository.getInfo();
      emit(HistoryLoaded(infoList: infoList));
    } catch (e) {
      emit(HistoryError(error: e.toString()));
    }
  }

  Future<void> _addNewInfo(
      AddInfoEvent event, Emitter<HistoryState> emit) async {
    try {
      emit(HistoryLoading());
      final updateInfoList = await infoRepository.addInfo(event.info);
      emit(HistoryLoaded(infoList: updateInfoList));
    } catch (e) {
      emit(HistoryError(error: e.toString()));
    }
  }
}
