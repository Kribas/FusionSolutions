import 'package:flutter/material.dart';


class NtPrepaid extends StatefulWidget {
  @override
  _NtPrepaidState createState() => _NtPrepaidState();
}

class _NtPrepaidState extends State<NtPrepaid> {

  final textController = TextEditingController();




  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.amber,
        title: Text("NT Prepaid"),
      ),

      body: Container(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: TextFormField(
                controller: textController,
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
