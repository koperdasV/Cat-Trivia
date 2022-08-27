import 'package:cat_trivia/data/model/fact_model.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/cupertino.dart';

@immutable
abstract class FactSate extends Equatable {}

class FactLoadingState extends FactSate {
  @override
  List<Object?> get props => [];
}

class FactLoadedState extends FactSate {
  final FactModel fact;

  FactLoadedState(this.fact);

  @override
  List<Object?> get props => [fact];
}

class FactErrorState extends FactSate {
  final String error;

  FactErrorState(this.error);
  @override
  List<Object?> get props => [error];
}
