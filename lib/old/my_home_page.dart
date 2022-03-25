import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(children: [
            buildFirstSection(),
            buildSecondSection(),
            buildThirdSection(),
          ]),
        ),
      ),
    );
    floatingActionButton:
    FloatingActionButton(
      onPressed: _incrementCounter,
      tooltip: 'Dodaj',
      child: const Icon(Icons.add),
    ); // This trailing comma makes auto-formatting nicer for build methods.
  }

  Row buildThirdSection() => Row(
        children: [
          Text("TextPierwszy"),
          Text("TextDrugi"),
          Text("TextTrzeci"),
        ],
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
      );

  Widget buildSecondSection() => Container(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            children: [
              Container(
                child: Text("Sekcja2"),
              ),
            ],
            crossAxisAlignment: CrossAxisAlignment.center,
          ),
        ),
        width: 400,
      );

  Row buildFirstSection() => Row(children: [Spacer(), Text("sekcja1")]);
}

class _dropdownValue {}
