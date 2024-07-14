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
  int value = 0;
  void increaseValue()
  {
    setState(() {
      value++;
    });
  }

  void decreaseValue()
  {
    setState(() {
        value--;
    });
  }


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
        body:Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
          ElevatedButton.icon(onPressed: increaseValue, label: Text("+")),
          ElevatedButton.icon(onPressed:decreaseValue, label: Text("-")),
          Container(
            padding: EdgeInsets.all(10),
            margin: EdgeInsets.all(5),
            color: Colors.blueGrey,
            child: Text("Result: "+value.toString()),
          
          )
        ],
        ) 
         
      ),
    );
  }
}