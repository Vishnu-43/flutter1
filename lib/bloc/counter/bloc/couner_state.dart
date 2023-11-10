part of 'couner_bloc.dart';

@immutable
class CounerState {
  int counterValue;
  CounerState({required this.counterValue});
}

final class CounerInitial extends CounerState {
  CounerInitial() : super(counterValue: 0);
}
