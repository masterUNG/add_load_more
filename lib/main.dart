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
  var items = new List<String>.generate(20, (i) => "Item $i");

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
                  ? new RaisedButton(
                  color: Colors.lightBlue,
                  child: new Text(
                    'Load more ...',
                    style: new TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                    ),
                  ),
                  onPressed: (){

                    var nextItems = new List<String>.generate(20, (i){
                      var itemId = i+items.length;
                      return "Item $itemId";
                    });
                    setState(() {
                      items.addAll(nextItems);
                    });
                  })
                  : new ListTile(
                title: new Text('${items[index]}'),
              );
              return widgetItem;
            }),
      ),
    );
  }
}
