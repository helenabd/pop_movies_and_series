import 'package:equatable/equatable.dart';

abstract class ShowEvent extends Equatable {
  const ShowEvent();

  @override
  List<Object> get props => [];
}

class ShowIndexEvent extends ShowEvent {}

class ShowDetailEvent extends ShowEvent {
  final int id;

  ShowDetailEvent(this.id);
}
