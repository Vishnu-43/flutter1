part of 'couner_bloc.dart';

@immutable
sealed class CounerEvent {}

class IncrementEvent extends CounerEvent {}

class DecrementEvent extends CounerEvent {}
