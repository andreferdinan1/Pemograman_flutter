import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}


class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final TextEditingController myController = TextEditingController();

  String hasil = "HASIL INPUT"; 

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Text Field"),
        ),
        body: Center(
          child: Padding(
            padding: const EdgeInsets.all(25.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                TextField(
                  controller: myController,
            onChanged: (value) {
              print("ONCHANGE");
              setState(() {
                hasil = value;
              });
            },
            onSubmitted: (value) {
              print(value); 
            },
            onEditingComplete: () {
              print("EDIT SUCCES");
              print(myController.text);
            },
                ),
                Text(hasil),
              ],
            
            ),
          ),
        ),
      ),
    );
  }
}
