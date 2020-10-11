import 'package:flutter/material.dart';


class Today extends StatefulWidget {
  @override
  _TodayState createState() => _TodayState();
}

class _TodayState extends State<Today> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView(
          children: [
            Container(
              height: 100,
              child: Card(
                child: ListTile(
                  onTap: () {},
                  leading: FlutterLogo(),
                  trailing: Text("12:00 PM"),
                  title: Text("Qfx Labim Mall(Kathmandu Valley)"),
                ),
              ),
            ),

            Container(
              height: 100,
              child: Card(
                child: ListTile(
                  onTap: () {},
                  leading: FlutterLogo(),
                  trailing: Text("15:30 PM"),
                  title: Text("Qfx Bhaktapur(Kathmandu Valley)"),
                ),
              ),
            ),

            Container(
              height: 100,
              child: Card(
                child: ListTile(
                  onTap: () {},
                  leading: FlutterLogo(),
                  trailing: Text("12:15 PM"),
                  title: Text("Qfx Chhaya Center(Kathmandu Valley)"),
                ),
              ),
            ),

            Container(
              height: 100,
              child: Card(
                child: ListTile(
                  onTap: () {},
                  leading: FlutterLogo(),
                  trailing: Text("12:30 PM"),
                  title: Text("Qfx Civil Mall(Kathmandu Valley)"),
                ),
              ),
            ),


          ],
        ),
      )

    );
  }
}
