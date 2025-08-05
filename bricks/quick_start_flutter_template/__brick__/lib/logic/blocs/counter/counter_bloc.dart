import 'package:bloc/bloc.dart';
import 'package:{{project_name}}/logic/blocs/counter/counter_event.dart';
import 'package:{{project_name}}/logic/blocs/counter/counter_state.dart';

class CounterBloc extends Bloc<CounterEvent, CounterState> {
  CounterBloc() : super(CounterInitial(counter: 0)) {
    on<IncrementEvent>((event, emit) {
      final current = (state is CounterInitial)
          ? (state as CounterInitial).counter
          : (state as CounterChanged).counter;
      emit(CounterChanged(counter: current + 1));
    });
    on<DecrementEvent>((event, emit) {
      final current = (state is CounterInitial)
          ? (state as CounterInitial).counter
          : (state as CounterChanged).counter;
      emit(CounterChanged(counter: current - 1));
    });
  }
}
