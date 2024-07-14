import 'package:flutter/material.dart';

void main() {
  runApp(const WidgetDetail());
}

class WidgetDetail extends StatefulWidget {
  const WidgetDetail({super.key});

  @override
  State<WidgetDetail> createState() => _WidgetDetailState();
}

class _WidgetDetailState extends State<WidgetDetail> {
  int value =0;
  void incrementValue(){
    setState(() {
      value+=1;
    });
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: Colors.green,
          title: const Text("Haytek Demo V1"),
          leading: const Text("ICON ALANI"),
        ),
        body:  Center(
          child:  Text(value.toString()),
        ),
      floatingActionButton: FloatingActionButton(
        child: Text("+"),
        onPressed:  incrementValue,
        backgroundColor: Colors.grey,
      ),
      )
    );
  }
}

















// Dinamik olarak veri olan yerlerde statefull widget kullanılacak
class Test extends StatefulWidget {
  const Test({super.key});

  @override
  State<Test> createState() => _TestState();
}

class _TestState extends State<Test> {
  int value=0;
  void incrementValue(){
    setState(() {
      value+=1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: Column(mainAxisAlignment:  MainAxisAlignment.center,
            children: [
               Text(value.toString()),
              ElevatedButton(
                onPressed: incrementValue
              , child: 
              const Text("Tıkla"))
            ],
          ),
        ),
      )
    );
  }
}