import 'package:flutter/material.dart';

void main() {
  runApp(const ThirdApp());
}

class ThirdApp extends StatefulWidget {
  const ThirdApp({super.key});

  @override
  State<ThirdApp> createState() => _ThirdAppState();
}

class _ThirdAppState extends State<ThirdApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar:AppBar(
          title: const Text("HAYTEK V3",style: TextStyle(
            color: Colors.amber
          ),),
          backgroundColor: const Color.fromARGB(255, 236, 78, 78),
        ),
        body: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: <Widget>[
           const  Text("Mami  "),
            ElevatedButton(onPressed: (){}, child: const  Text("Tıkla")),
            Container(
              padding: const EdgeInsets.all(40),
              color: Colors.green,
               child: const Text("Container"),
            )
          ],
        ),
        ),
    );
  }
}