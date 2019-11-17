import 'package:flutter/material.dart';
import 'package:pad/pad.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text("Pad")),
        body: PadAll(
          15.0,
          child: ListView(children: <Widget>[
            Container(
              color: Colors.grey[300],
              child: const Pad(top: 100.0, left: 100.0, child: Text("Foo")),
            ),
            const Pad(bottom: 10.0),
            Container(
              color: Colors.grey[300],
              child: const PadAll(100.0, child: Text("Foo")),
            ),
            const Pad(bottom: 10.0),
            Container(
              color: Colors.grey[300],
              child: const PadVertical(100.0, child: Text("Foo")),
            ),
            const Pad(bottom: 10.0),
            Container(
              color: Colors.grey[300],
              child: const PadHorizontal(100.0, child: Text("Foo")),
            ),
            const Pad(bottom: 10.0),
            Container(
              color: Colors.grey[300],
              child: const PadLTRB(
                25.0,
                50.0,
                25.0,
                50.0,
                child: Text("Foo"),
              ),
            ),
            const Pad(bottom: 50.0)
          ]), // This trailing comma makes auto-formatting nicer for build methods.
        ));
  }
}
