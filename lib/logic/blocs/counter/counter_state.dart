import 'package:equatable/equatable.dart';

abstract class CounterState extends Equatable {}

class CounterInitial extends CounterState {
  final int counter;

  CounterInitial({required this.counter});

  @override
  List<Object?> get props => [counter];
}

class CounterChanged extends CounterState {
  final int counter;

  CounterChanged({required this.counter});

  @override
  List<Object?> get props => [counter];
}
