import 'package:flutter/material.dart';
import 'package:watch_it/watch_it.dart';
import 'dependencies.dart';
import 'package:flutter_act14_20220229/models/counter_model.dart';
import 'package:flutter_act14_20220229/widgets/counter_image_widget.dart';
import 'package:flutter_act14_20220229/widgets/counter_text_field_widget.dart';
import 'package:flutter_act14_20220229/widgets/counter_text_widget.dart';


void main() {
  initializerDependencies();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Watch_it',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget with WatchItMixin{
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text("Watch_it: State Management!"),
      ),
      body: const Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'You have pushed the button this many times:',
            ),
            CounterTextWidget(),
            CounterTextFieldWidget(),
            CounterImageWidget(),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          di<CounterModel>().counter.value++;
        },
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
