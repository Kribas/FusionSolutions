import 'package:flutter/material.dart';

class Water extends StatefulWidget {
  @override
  _NepWaterState createState() => _NepWaterState();
}

class _NepWaterState extends State<Water> {

  String dropdownValue = 'Anbukhaireni Khanepani';


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Water Inquiry"),
        backgroundColor: Colors.amber,
      ),

      body: Container(
        child: Column(
          children: [
            Padding(padding: EdgeInsets.all(20),
              child: Text("Water Counters"),
            ),

            Padding(
                padding: const EdgeInsets.all(20.0),
                child: DropdownButton<String>(
                    value: dropdownValue,
                    icon: Icon(Icons.keyboard_arrow_down),
                    iconSize: 24,
                    elevation: 16,
                    items: <String>['Anbukhaireni Khanepani','Adarsha Nagar Khanepani','Amarapuri Khanepani','Arungkhola Khanepani','Baglung Khanepani']
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


            Padding(
              padding: const EdgeInsets.all(20.0),
              child: TextFormField(
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                    labelText: 'Consumer ID'
                ),
              ),
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
