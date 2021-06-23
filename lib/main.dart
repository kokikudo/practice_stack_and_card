import 'dart:math';
//import 'package:flutter/rendering.dart';
import 'package:flutter/material.dart';

void main() {
  //debugPaintSizeEnabled = false;
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const CardWidget(),
    );
  }
}

class StackWidget extends StatelessWidget {
  const StackWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final double deviceWidth = MediaQuery.of(context).size.width;
    final double deviceHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(title: const Text("Simple Burger Composition")),
      body: Stack(
        children: [
          Positioned(
            left: deviceWidth * 0.4,
            top: deviceHeight * 0.4,
            height: 250.0,
            width: 250.0,
            child: Container(
              decoration: const BoxDecoration(
                  shape: BoxShape.circle, color: Color(-6855852)),
            ),
          ),
          Positioned(
            left: deviceWidth * 0.3,
            top: deviceHeight * 0.3,
            height: 250.0,
            width: 250.0,
            child: Transform.rotate(
              angle: pi / 4,
              child: Container(
                color: Colors.green,
              ),
            ),
          ),
          Positioned(
            left: deviceWidth * 0.2,
            top: deviceHeight * 0.2,
            height: 250.0,
            width: 250.0,
            child: Container(
              color: Colors.yellow,
            ),
          ),
          Positioned(
            left: deviceWidth * 0.1,
            top: deviceHeight * 0.1,
            height: 250.0,
            width: 250.0,
            child: Container(
              decoration: const BoxDecoration(
                  shape: BoxShape.circle, color: Color(-6855852)),
            ),
          ),
        ],
      ),
    );
  }
}

class CardWidget extends StatelessWidget {
  const CardWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Simple Card"),
      ),
      body: ListView(
        children: [
          _cardWidgetPart(0),
          _cardWidgetPart(1),
          _cardWidgetPart(2),
          _cardWidgetPart(3),
          _cardWidgetPart(4),
        ],
      ),
    );
  }

  Widget _cardWidgetPart(int cardNumber) {
    return Card(
      margin: const EdgeInsets.all(25.0),
      child: Container(
        margin: const EdgeInsets.all(10.0),
        width: 300.0,
        height: 100.0,
        child: Text(
          "Card $cardNumber",
          style: const TextStyle(fontSize: 30),
        ),
      ),
    );
  }
}
