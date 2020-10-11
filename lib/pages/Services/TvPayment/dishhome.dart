import 'package:flutter/material.dart';

class DishHome extends StatefulWidget {
  @override
  _DishHomeState createState() => _DishHomeState();
}

class _DishHomeState extends State<DishHome> {

  String dropdownValue = 'NPR 500';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("DishHome"),
      ),

      body: Container(
        child: Column(
          children: [

            Padding(
            padding: EdgeInsets.all(20.0),
            child: Text("CAS id",
            ),
            ),


            Padding(
              padding: const EdgeInsets.all(20.0),
              child: TextFormField(
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                    labelText: '11 Numeric digits'
                ),
              ),
            ),


            Padding(
              padding: EdgeInsets.all(20.0),
              child: Text("Amount"),
            ),

            Padding(
              padding: const EdgeInsets.all(20.0),
              child: DropdownButton<String>(
                  value: dropdownValue,
                  icon: Icon(Icons.keyboard_arrow_down),
                  iconSize: 24,
                  elevation: 16,
                  items: <String>['NPR 500','NPR 1000','NPR 2000','NPR 3000','NPR 4000']
                  .map<DropdownMenuItem<String>>((String value) {
                    return DropdownMenuItem<String>(
                      value: value,
                      child: Text(value),
                    );
                  }).toList(),
                  onChanged: (String newValue) {
                    setState(() {
                      dropdownValue = newValue;
                    });
                  })
            ),



            Container(
              width: 300,
              child: FlatButton(
                  color: Colors.blue,
                  onPressed: () {},
                  child: Text("Inquiry",
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
