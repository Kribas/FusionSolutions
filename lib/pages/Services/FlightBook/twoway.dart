import 'package:flutter/material.dart';



class TwoWay extends StatefulWidget {
  @override
  _OneWayState createState() => _OneWayState();
}

class _OneWayState extends State<TwoWay> {

  var _fromCity = ['From','Butwal','Baglung','Lamjung','Kathmandu','Lumbini'];
  var _toCity = ['To','Butwal','Baglung','Lamjung','Kathmandu','Lumbini'];

  var _currentFromCity = 'From';
  var _currentToCity = 'To';



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Two Way Flight Book"),
        backgroundColor: Colors.amber,
      ),

      body: SingleChildScrollView(
        child: Container(
          child: Column(
            children: [

              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text("Book your Flight",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 40
                  ),
                ),
              ),


              Row(
                children: [

                  Expanded(
                    child: Column(
                      children: [

                        Padding(padding: EdgeInsets.all(10.0),
                          child: Text("From",
                            style: TextStyle(
                                fontWeight: FontWeight.bold
                            ),
                          ),
                        ),

                        Container(
                          width: 150,
                          child: Card(
                            child: DropdownButton<String>(
                              items: _fromCity.map((String dropDownStringItem){
                                return DropdownMenuItem<String>(
                                  value: dropDownStringItem,
                                  child: Text(dropDownStringItem),
                                );
                              }).toList(),

                              onChanged: (String newValueSelected) {
                                setState(() {
                                  this._currentFromCity = newValueSelected;
                                });
                              },

                              value: _currentFromCity,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),



                  Expanded(
                    child: Column(
                      children: [

                        Padding(padding: EdgeInsets.all(10.0),
                          child: Text("To",
                            style: TextStyle(
                                fontWeight: FontWeight.bold
                            ),
                          ),
                        ),

                        Container(
                          width: 150,
                          child: Card(
                            child: DropdownButton<String>(
                              items: _toCity.map((String dropDownStringItem){
                                return DropdownMenuItem<String>(
                                  value: dropDownStringItem,
                                  child: Text(dropDownStringItem),
                                );
                              }).toList(),

                              onChanged: (String newValueSelected) {
                                setState(() {
                                  this._currentToCity = newValueSelected;
                                });
                              },

                              value: _currentToCity,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),



                ],
              ),

              SizedBox(height: 30,),


              Row(
                children: [

                  Expanded(
                    child: Column(
                      children: [

                        Padding(padding: EdgeInsets.all(10.0),
                          child: Text("Departure Date",
                            style: TextStyle(
                                fontWeight: FontWeight.bold
                            ),
                          ),
                        ),

                        Container(
                            width: 150,
                            child: TextFormField(
                              keyboardType: TextInputType.datetime,
                              decoration: InputDecoration(
                                  labelText: "mm/dd/yy"
                              ),
                            )
                        ),
                      ],
                    ),
                  ),



                  Expanded(
                    child: Column(
                      children: [

                        Padding(padding: EdgeInsets.all(10.0),
                          child: Text("Return Date",
                            style: TextStyle(
                                fontWeight: FontWeight.bold
                            ),
                          ),
                        ),

                        Container(
                            width: 150,
                            child: TextFormField(
                              keyboardType: TextInputType.datetime,
                              decoration: InputDecoration(
                                  labelText: "mm/dd/yy"
                              ),
                            )
                        ),
                      ],
                    ),
                  ),



                ],
              ),


              SizedBox(height: 30,),


              Row(
                children: [

                  Expanded(
                    child: Column(
                      children: [

                        Padding(padding: EdgeInsets.all(10.0),
                          child: Text("Adult(12years +)",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                        ),

                        Container(
                            width: 150,
                            child: TextFormField(
                              keyboardType: TextInputType.datetime,
                              decoration: InputDecoration(
                                  labelText: "Number of Adults"
                              ),
                            )
                        ),
                      ],
                    ),
                  ),



                  Expanded(
                    child: Column(
                      children: [

                        Padding(padding: EdgeInsets.all(10.0),
                          child: Text("Children(2 - 11years)",
                            style: TextStyle(
                                fontWeight: FontWeight.bold
                            ),
                          ),
                        ),

                        Container(
                            width: 150,
                            child: TextFormField(
                              keyboardType: TextInputType.number,
                              decoration: InputDecoration(
                                  labelText: "Number of Children"
                              ),
                            )
                        ),
                      ],
                    ),
                  ),



                ],
              ),

              SizedBox(height: 30,),

              Container(
                width: 200,
                child: FlatButton(
                  color: Colors.amber,
                  onPressed: () {},
                  child: Text("Search",style: TextStyle(
                      color: Colors.black
                  ),),
                ),
              )




            ],
          ),
        ),
      ),
    );
  }
}

