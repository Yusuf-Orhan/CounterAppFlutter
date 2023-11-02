import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:state_management/features/counter_model.dart';
import 'package:state_management/features/second_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => CounterModel())
      ],
      child: MaterialApp(
        title: 'Flutter Demo',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: false,
        ),
        home: const HomeScreen(),
      ),
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Home Page")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Consumer<CounterModel>(
              builder: (context,counter,child){
                return Text("${counter.getCounter()}",style: const TextStyle(fontSize: 24),);
              }
            ),
            ElevatedButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => const SecondScreen()));
                },
                child: const Text("Goto Second Screen"))
          ],
        ),
      ),
    );
  }
}
