part of 'history_bloc_bloc.dart';

abstract class HistoryState extends Equatable {
  const HistoryState();

  @override
  List<Object> get props => [];
}

class HistoryInitial extends HistoryState {}

class HistoryLoading extends HistoryState {}

class HistoryLoaded extends HistoryState {
  final List<Info> infoList;
  const HistoryLoaded({
    required this.infoList,
  });
}

class HistoryError extends HistoryState {
  final String error;
  const HistoryError({
    required this.error,
  });
}
