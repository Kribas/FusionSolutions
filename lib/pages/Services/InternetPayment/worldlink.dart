import 'package:flutter/material.dart';


class WorldLink extends StatefulWidget {
  @override
  _WorldLink createState() => _WorldLink();
}

class _WorldLink extends State<WorldLink> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.amber,
        title: Text("WorldLink"),
      ),

      body: Container(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: TextFormField(
                keyboardType: TextInputType.text,
                decoration: InputDecoration(
                    labelText: 'Username'
                ),
              ),
            ),


            Padding(
                padding: const EdgeInsets.all(20.0),
                child: TextFormField(
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                    labelText: 'Mobile Number'
                  ),
                ),
            ),



            Padding(
              padding: const EdgeInsets.all(20.0),
              child: TextFormField(
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                    labelText: 'Amount'
                ),
              ),
            ),

            Container(
              width: 300,
              child: FlatButton(
                  color: Colors.blue,
                  onPressed: () {},
                  child: Text("Submit",
                    style: TextStyle(
                        color: Colors.white
                    ),
                  )
              ),
            ),

            Container(
              width: 300,
              child: FlatButton(
                  color: Colors.blue,
                  onPressed: () {},
                  child: Text("Cancel",
                    style: TextStyle(
                        color: Colors.white
                    ),
                  )
              ),
            ),

          ],
        ),
      ),
    );
  }
}
