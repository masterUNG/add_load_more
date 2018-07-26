import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: '',
      home: new _Stateful(),
    );
  }
}

class _Stateful extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return new __StatefulState();
  }
}

class __StatefulState extends State<_Stateful> {
  var items = new List<String>.generate(50, (i) => "Item $i");

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Add Load More"),
      ),
      body: new Container(
        child: new ListView.builder(
            itemCount: items.length + 1,
            itemBuilder: (context, index) {
              final widgetItem = (index==items.length)
                  ? new RaisedButton(onPressed: null)
                  : new ListTile(
                title: new Text('${items[index]}'),
              );
              return widgetItem;
            }),
      ),
    );
  }
}
