part of 'history_bloc_bloc.dart';

abstract class HistoryEvent extends Equatable {
  const HistoryEvent();

  @override
  List<Object> get props => [];
}

class InitInfoBox extends HistoryEvent {}

class FetchAllInfoEvent extends HistoryEvent {}

class AddInfoEvent extends HistoryEvent {
  final Info info;
  const AddInfoEvent({
    required this.info,
  });
}
