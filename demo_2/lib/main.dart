import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (context) => CounterModel(),
      child: MyApp(),
    ),
  );
}

class CounterModel extends ChangeNotifier {
  int counter = 0;

  int getCounter() => counter;

  void incrementCounter() {
    counter++;
    notifyListeners();
  }

  void decrementCounter() {
    counter--;
    notifyListeners();
  }
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Theme.of(context).colorScheme.inversePrimary,
          title: const Text("Counter"),
        ),
        body: const Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Count(),
              Text(""), // Placeholder text
            ],
          ),
        ),
        floatingActionButton: SizedBox(
          width: double.infinity, // Adjust the width as needed
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Consumer<CounterModel>(
                builder: (context, counter, child) => FloatingActionButton(
                  onPressed: counter.incrementCounter,
                  tooltip: 'Increment',
                  child: Icon(Icons.add),
                ),
              ),
              SizedBox(width: 16),
              Consumer<CounterModel>(
                builder: (context, counter, child) => FloatingActionButton(
                  onPressed: counter.decrementCounter,
                  tooltip: 'Decrement',
                  child: Icon(Icons.remove),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class Count extends StatelessWidget {
  const Count({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      /// Calls `context.watch` to make [Count] rebuild when [Counter] changes.
      '${context.watch<CounterModel>().counter}',
      key: const Key('counterState'),
      style: Theme.of(context).textTheme.headlineMedium,
    );
  }
}
