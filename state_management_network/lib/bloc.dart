import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';


void main() {
  runApp(
    BlocProvider<CounterModel>(
      create: (context) => CounterModel(),
      child: MyApp(),
    ),
  );
}


class CounterModel extends Cubit<int> {
  int counter = 0;

  CounterModel() : super(0);

  int getCounter() => counter;

  void incrementCounter() {
    emit(state + 1);
   
  }

  void decrementCounter() {
    emit(state - 1);
   
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
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Count(),
              Text(""),
            ],
          ),
        ),
        floatingActionButton: SizedBox(
          width: double.infinity,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
               FloatingActionButton(
                  onPressed: context.read<CounterModel>().incrementCounter,
                  tooltip: 'Increment',
                  child: Icon(Icons.add),
                ),
              
              SizedBox(width: 16),
              FloatingActionButton(
                  onPressed: context.read<CounterModel>().decrementCounter,
                  tooltip: 'Decrement',
                  child: Icon(Icons.remove),
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
    return BlocBuilder<CounterModel, int>(
      builder: (context, count) {
        return Text(
          count.toString(),
          
        );
      },
    );
  }
}




