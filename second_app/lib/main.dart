import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:second_app/colors.dart';

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
      theme: ThemeData(
        textTheme: GoogleFonts.acmeTextTheme(),
        
      ),
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: HexColor(primaryColor),
          title: const Text("Haytek Demo V1",style: TextStyle(
            letterSpacing: 5,
            fontFamily: "FirstFont"
          ),),
          leading: const Text("ICON ALANI"),
        ),
        body: const  Center(
          child: Image(
            // image: AssetImage("lib/assets/images/img1.jpg"),
            image: NetworkImage("https://images.pexels.com/photos/25695918/pexels-photo-25695918/free-photo-of-adam-plaj-insanlar-kum.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1"),
          )
           
        ),
      floatingActionButton: FloatingActionButton(
        child: Text("+"),
        onPressed:  incrementValue,
        backgroundColor: HexColor(thirdColor),
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