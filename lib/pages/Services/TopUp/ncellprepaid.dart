import 'package:flutter/material.dart';

class NcellPrepaid extends StatefulWidget {
  @override
  _NcellPrepaidState createState() => _NcellPrepaidState();
}

class _NcellPrepaidState extends State<NcellPrepaid> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.amber,
        title: Text("Ncell Prepaid"),
      ),

      body: Container(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: TextFormField(
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                    labelText: 'Amount'
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
                    labelText: 'Account Number'
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

