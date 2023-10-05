import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Image Widget"),
        ),
        body: Center(
          child: Container(
            width: 350,
            height: 500,
            color: Colors.amber,
              child: Image.network(
                "https://picsum.photos/200",
            // child: Image(
            //   fit: BoxFit.cover,
            //   // image: AssetImage("images/image.jpg")
            //   image: NetworkImage("https://picsum.photos/id/237/200/300"),
              ),
          ),
        ),
      ),
    );
    
  }
}
