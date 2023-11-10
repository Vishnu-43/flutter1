import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'couner_event.dart';
part 'couner_state.dart';

class CounerBloc extends Bloc<CounerEvent, CounerState> {
  CounerBloc() : super(CounerInitial()) {
    on<CounerEvent>((event, emit) {
      // if (event is IncrementEvent) {
      //   emit(CounerState(counterValue: state.counterValue + 1));
      // }
      // if (event is DecrementEvent) {
      //   emit(CounerState(counterValue: state.counterValue - 1));
      // }
      on<IncrementEvent>((event, emit) =>
          emit(CounerState(counterValue: state.counterValue + 1)));
      on<DecrementEvent>((event, emit) =>
          emit(CounerState(counterValue: state.counterValue - 1)));
    });
  }
}
