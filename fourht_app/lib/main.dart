import 'package:flutter/material.dart';

void main() {
  runApp(const LayoutPage());
}

class LayoutPage extends StatefulWidget {
  const LayoutPage({super.key});

  @override
  State<LayoutPage> createState() => _LayoutPageState();
}

class _LayoutPageState extends State<LayoutPage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Row(
      children: [
        Flexible(
          flex: 2,
          child: Container(
          color: Colors.red,
          child: Text("Kralsdfdsfsdfdsfsdfsdfsdfsdfsdf"),
        )),
        Flexible(
          child: Container(
          color: Colors.green,
          child: Text("Word"),
        )),
      ],
    ));
  }
}
