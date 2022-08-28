import 'package:equatable/equatable.dart';
import 'package:flutter/cupertino.dart';

@immutable
abstract class FactEvent extends Equatable {
  const FactEvent();
}

class LoadFactEvent extends FactEvent {
  @override
  List<Object> get props => [];
}
