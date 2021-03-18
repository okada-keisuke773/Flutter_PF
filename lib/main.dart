import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) => MaterialApp(
        title: 'Demo',
        theme: ThemeData(primarySwatch: Colors.blue),
        home: Main(),
      );
}

class Main extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final image = Container(
        color: Colors.indigo,
        child: Column(
          children: [
            Image.asset('images/cmind_log.jpg'),
          ],
        ));

    final intro = Container(
      width: double.infinity,
      height: 200,
      margin: EdgeInsets.all(100),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          image,
          Text(
            'ようこそ〇〇さん',
            style: TextStyle(fontSize: 20),
          ),
        ],
      ),
    );

    final list = Container(
      child: Column(
        children: [
          intro,
          RaisedButton(
            onPressed: () {},
            textColor: Colors.white,
            padding: const EdgeInsets.all(0),
            child: Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: <Color>[
                    Colors.blue[300],
                    Colors.blue[500],
                    Colors.blue[700],
                  ],
                ),
              ),
              padding: const EdgeInsets.all(10),
              child: const Text('会議室の予約状況'),
            ),
          ),
          RaisedButton(
            onPressed: () {},
            textColor: Colors.white,
            padding: const EdgeInsets.all(0),
            child: Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: <Color>[
                    Colors.blue[300],
                    Colors.blue[500],
                    Colors.blue[700],
                  ],
                ),
              ),
              padding: const EdgeInsets.all(10),
              child: const Text('自分の予約状況'),
            ),
          ),
        ],
      ),
    );

    return Scaffold(
      appBar: AppBar(
        title: Text('Demo'),
      ),
      body: Center(
        child: list,
      ),
    );
  }
}
