import 'package:flutter/material.dart';
import 'package:watch_it/watch_it.dart';
import 'package:flutter_act14_20220229/models/counter_model.dart';

class CounterImageWidget extends StatelessWidget with WatchItMixin{
  const CounterImageWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final counterValue = watchValue((CounterModel x) => x.counter);
    return Image.network('https://picsum.photos/id/$counterValue/200/300.jpg');
  }
}