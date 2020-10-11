import 'package:flutter/material.dart';


class Tomorrow extends StatefulWidget {
  @override
  _TomorrowState createState() => _TomorrowState();
}

class _TomorrowState extends State<Tomorrow> {
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
      ),

    );
  }
}
