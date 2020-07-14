import 'package:cupertino_progress_bar/cupertino_progress_bar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primaryColor: Color(0xFFC41A3B),
        primaryColorLight: Color(0xFFFBE0E6),
        accentColor: Color(0xFF1B1F32),
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  String title = 'Cupertino Progress Bar';
  double _val = 0.64;
  @override
  Widget build(BuildContext context) {
    return CupertinoApp(
      debugShowCheckedModeBanner: false,
      home: CupertinoPageScaffold(
        navigationBar: CupertinoNavigationBar(
          padding: EdgeInsetsDirectional.zero,
          backgroundColor: Color(0xFFC41A3B),
          middle: Stack(
            overflow: Overflow.visible,
            children: <Widget>[
              Center(
                child: Text(
                  title,
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
              ),
              Positioned(
                left: -8,
                right: -8,
                bottom: 0,
                child: CupertinoProgressBar(
                  value: _val,
                  trackColor: Color(0xFFFBE0E6),
                  valueColor: Color(0xFF1B1F32),
                ),
              )
            ],
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text('${(_val * 100).round()}%'),
                  SizedBox(height: 64.0),
                  CupertinoProgressBar(
                    trackColor: Color(0xFFFBE0E6),
                    valueColor: Color(0xFFC41A3B),
                    value: _val,
                  ),
                ],
              ),
            ),
            CupertinoSlider(
              activeColor: Color(0xFFC41A3B),
              thumbColor: Color(0xFF1B1F32),
              value: _val,
              onChanged: (_value) => setState(() => _val = _value),
            ),
          ],
        ),
      ),
    );
  }
}
