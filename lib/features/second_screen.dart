import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:state_management/features/counter_model.dart';

class SecondScreen extends StatelessWidget {
  const SecondScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Second Screen"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Consumer<CounterModel>(builder: (context, counter, child) {
              return Text("${counter.getCounter()}",style: const TextStyle(fontSize: 24),);
            }),
            Consumer<CounterModel>(builder: (context, counter, child) {
              return ElevatedButton(
                  onPressed: () {
                    counter.increase();
                  },
                  child: const Text("Increase"));
            }),
            Consumer<CounterModel>(builder: (context, counter, child) {
              return  ElevatedButton(
                  onPressed: () {
                    counter.decrease();
                  },
                  child: const Text("Decrease"));
            }),

          ],
        ),
      ),
    );
  }
}
