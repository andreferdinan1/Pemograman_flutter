import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar:AppBar(
          title: Text("List Tile"),
        ), 
        body: ListView(
          children: [
            ListTile(
              contentPadding: EdgeInsets.symmetric(vertical: 10, horizontal: 8),
              title: Text("Andre Ferdinan"),
              subtitle: Text(
                "This is subtitle okay... aaaadadhasfjagkfjguek,gfqiulfbcewiubfiwubvuwebiubwvbwuiebvu",
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                ),
              leading: CircleAvatar(),
              trailing: Text("10:00 PM"),
              // tileColor: Colors.amber,
              // dense: true,
              // onTap: (){
              //   return;
              // },
            ),
            ListTile(
              title: Text("Andre Ferdinan"),
              subtitle: Text("This is subtitle okay..."),
              leading: CircleAvatar(),
              trailing: Text("10:00 PM"),
            ),ListTile(
              title: Text("Andre Ferdinan"),
              subtitle: Text("This is subtitle okay..."),
              leading: CircleAvatar(),
              trailing: Text("10:00 PM"),
            ),ListTile(
              title: Text("Andre Ferdinan"),
              subtitle: Text("This is subtitle okay..."),
              leading: CircleAvatar(),
              trailing: Text("10:00 PM"),
            ),ListTile(
              title: Text("Andre Ferdinan"),
              subtitle: Text("This is subtitle okay..."),
              leading: CircleAvatar(),
              trailing: Text("10:00 PM"),
            ),
          ],
        ),
      ),
    );
  }
}
