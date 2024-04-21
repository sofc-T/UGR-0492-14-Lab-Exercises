import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

void main() {
  runApp(
    ProviderScope(
      child: MyApp(),
    ),
  );
}

final counterStateProvider = StateNotifierProvider<CounterModel, int>((ref) => CounterModel());

class CounterModel extends StateNotifier<int> {
  CounterModel() : super(0);

  void incrementCounter() {
    state ++;
  }

  void decrementCounter() {
    state--;
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
              Text(""),
            ],
          ),
        ),
        floatingActionButton: Consumer(
          builder: (context, ref, child) {
            return SizedBox(
              width: double.infinity,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  FloatingActionButton(
                    onPressed: () => ref.read(counterStateProvider.notifier).incrementCounter(),
                    tooltip: 'Increment',
                    child: Icon(Icons.add),
                  ),
                  SizedBox(width: 16),
                  FloatingActionButton(
                    onPressed: () => ref.read(counterStateProvider.notifier).decrementCounter(),
                    tooltip: 'Decrement',
                    child: Icon(Icons.remove),
                  ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}

class Count extends ConsumerWidget {
  const Count({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final counter = ref.watch(counterStateProvider);
    return Text(
      counter.toString(),
    );
  }
}
