import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  String data = "Belum ada input";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Dialog"),
      ),
      body: Center(child: Text(data,style: TextStyle(fontSize: 35,),),),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          print("Telah Diklik");
          showDialog(context: context, builder: (context){
            return AlertDialog(
              title: Text("CONFIRM"),
              content: Text("Are You sure to delete this item ?"),
              actions: [
                FloatingActionButton(onPressed: (){
                  print("Klik No");
                  setState(() {
                    data = "FALSE";
                  });
                  
                  Navigator.of(context).pop(false);
                },
                child: Text("No"),
                ),
                FloatingActionButton(onPressed: (){
                  print("Klik Yes");
                  setState(() {
                    data = "TRUE";
                  });
                  Navigator.of(context).pop(true);
                },
                child: Text("Yes"),
                ),
              ],
            );
          },
          ).then((value) { return print(value);});
        },
        child: Icon(Icons.delete),

      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}