// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';

class Counter extends Equatable {
  int count;

  Counter({
    this.count = 0,
  });

  @override
  List<Object> get props => [count];
}
