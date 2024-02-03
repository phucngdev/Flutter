import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: HomePages(),
    );
  }
}

class HomePages extends StatefulWidget {
  const HomePages({super.key});

  @override
  State<StatefulWidget> createState() {
    return _homePage();
  }
}

class MyCalc {
  int value;
  MyCalc({required this.value});
  void _incre() {
    value = value + 1;
  }

  void _decre() {
    value = value - 1;
  }
}

class _homePage extends State<HomePages> {
  MyCalc _MyCalc = MyCalc(value: 0);
  void _incre() {
    setState(() {
      _MyCalc._incre();
    });
  }

  void _decre() {
    setState(() {
      _MyCalc._decre();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.cyanAccent,
        title: const Text('Bài tập'),
      ),
      body: Center(
          child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [Text('Đếm số'), Text('${_MyCalc.value}')])),
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
            onPressed: () {
              _incre();
            },
            child: const Icon(Icons.add),
          ),
          const SizedBox(height: 16), // Add some spacing between the buttons
          FloatingActionButton(
            onPressed: () {
              _decre();
            },
            child: const Icon(Icons.remove),
          ),
        ],
      ),
    );
  }
}
