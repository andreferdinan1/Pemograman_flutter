import 'package:flutter/material.dart';

class SettingsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Setting Page"),
      ), // AppBar
      drawer: Drawer(
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.all(20),
              width: double.infinity,
              height: 150,
              color: Colors.red,
              alignment: Alignment.bottomLeft,
              child: Text(
                "Menu pilihan",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                ), // TextStyle
              ), // Text
            ), // Container
            SizedBox(
              height: 10,
            ), // SizedBox
            ListTile(
              onTap: () {
                Navigator.of(context).pushReplacement(
                  MaterialPageRoute(
                    builder: (context) => SettingsPage(),
                  ),
                );
              },
              leading: Icon(
                Icons.home,
                size: 35,
              ),
              title: Text(
                "Home",
                style: TextStyle(
                  fontSize: 24,
                ), // TextStyle
              ), // Text
            ),
            ListTile(
              onTap: () {
                Navigator.of(context).pushReplacement(
                  MaterialPageRoute(
                    builder: (context) => SettingsPage(),
                  ),
                );
              },
              leading: Icon(
                Icons.settings,
                size: 35,
              ),
              title: Text(
                "Setting",
                style: TextStyle(
                  fontSize: 24,
                ), // TextStyle
              ), // Text
            ), // ListTile// ListTile
          ],
        ),
      ),
      body: Center(
        child: Text(
          "Some Text Here!",
          style: TextStyle(
            fontSize: 35,
          ), // TextStyle
        ), // Text
      ), // Center
    ); // Scaffold
  }
}
