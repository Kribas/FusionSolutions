import 'package:flutter/material.dart';



class Mountain extends StatefulWidget {
  @override
  _MountainState createState() => _MountainState();
}

class _MountainState extends State<Mountain> {

  var _mountainFlight = ['Everest Experience','Annapurna Experience'];


  var _currentMountainFlight = 'Everest Experience';



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Mountain Flight Book"),
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


              Column(
                children: [

                  Padding(padding: EdgeInsets.all(10.0),
                    child: Text("Mountain Flights",
                      style: TextStyle(
                          fontWeight: FontWeight.bold
                      ),
                    ),
                  ),

                  Container(
                    width: 250,
                    child: Card(
                      child: DropdownButton<String>(
                        items: _mountainFlight.map((String dropDownStringItem){
                          return DropdownMenuItem<String>(
                            value: dropDownStringItem,
                            child: Text(dropDownStringItem),
                          );
                        }).toList(),

                        onChanged: (String newValueSelected) {
                          setState(() {
                            this._currentMountainFlight = newValueSelected;
                          });
                        },

                        value: _currentMountainFlight,
                      ),
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


