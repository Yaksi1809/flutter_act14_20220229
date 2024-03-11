import 'package:watch_it/watch_it.dart';
import 'package:flutter_act14_20220229/models/counter_model.dart';

void initializerDependencies()
{
  di.registerSingleton<CounterModel>(CounterModel());
}