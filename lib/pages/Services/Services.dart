import 'package:flutter/material.dart';
import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:fusionsolutions/models/topup.dart';
import 'package:fusionsolutions/pages/Services/TopUp/ncellprepaid.dart';
import 'package:fusionsolutions/pages/Services/TopUp/ntprepaid.dart';
import 'package:fusionsolutions/pages/Services/TvPayment/dishhome.dart';
import 'package:fusionsolutions/pages/Services/ElectricityWater/electricity.dart';
import 'package:fusionsolutions/pages/Services/ElectricityWater/water.dart';
import 'package:fusionsolutions/pages/Services/TopUp/ntpostpaid.dart';
import 'package:fusionsolutions/pages/Services/TopUp/ntcdma.dart';
import 'package:fusionsolutions/pages/Services/TopUp/smartcell.dart';
import 'package:fusionsolutions/pages/Services/TopUp/utl.dart';
import 'package:fusionsolutions/pages/Services/TopUp/adsl.dart';
import 'package:fusionsolutions/pages/Services/TopUp/ftth.dart';
import 'package:fusionsolutions/pages/Services/TopUp/wimax.dart';
import 'package:fusionsolutions/pages/Services/TvPayment//simtv.dart';
import 'package:fusionsolutions/pages/Services/InternetPayment/vianet.dart';
import 'InternetPayment/subisu.dart';
import 'InternetPayment/worldlink.dart';
import 'package:fusionsolutions/pages/Services/Entertainment/BigMovies/bigmovies.dart';
import 'package:fusionsolutions/pages/Services/Entertainment/Fcube/fcube.dart';
import 'package:fusionsolutions/pages/Services/Entertainment/QCinemas/qcinema.dart';
import 'package:fusionsolutions/pages/Services/Entertainment/BSRmovies/bsrMovies.dart';
import 'package:fusionsolutions/pages/Services/Entertainment/qfx/qfxCinemas.dart';
import 'FlightBook/oneway.dart';
import 'FlightBook/twoway.dart';
import 'FlightBook/mountain.dart';





class Services extends StatefulWidget {
  @override
  _ServicesState createState() => _ServicesState();
}

class _ServicesState extends State<Services> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Services & Payments",
        style: TextStyle(
          color: Colors.black
        ),
        ),
        backgroundColor: Colors.amber,
      ),

      body: SingleChildScrollView(
        child: Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 20,),

                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text("Topup & Recharge",
                    style: TextStyle(
                      fontSize: 18,
                    ),
                  ),
                ),

                SizedBox(
                  height: 150,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                    Container(
                    width: 160,
                    child: Card(
                      child: Wrap(
                        children: [
                          Container(
                            height: 70,
                            child: Image(
                              image: AssetImage("assets/nt.png"),
                            ),
                          ),
                          ListTile(
                            onTap: () {
                              Navigator.push(context, MaterialPageRoute(builder: (context) => NtPrepaid()));
                            },
                            title: Text("NT Prepaid"),
                          ),

                        ],
                      ),
                    ),
                  ),

                      Container(
                        width: 160,
                        child: Card(
                          child: Wrap(
                            children: [
                              Container(
                                height: 70,
                                child: Image(
                                  image: AssetImage("assets/ncell.png"),
                                ),
                              ),
                              ListTile(
                                onTap: () {
                                  Navigator.push(context, MaterialPageRoute(builder: (context) => NcellPrepaid()));
                                },
                                title: Text("Ncell Prepaid"),
                              ),

                            ],
                          ),
                        ),
                      ),


                      Container(
                        width: 160,
                        child: Card(
                          child: Wrap(
                            children: [
                              Container(
                                height: 70,
                                child: Image(
                                  image: AssetImage("assets/nt.png"),
                                ),
                              ),
                              ListTile(
                                onTap: () {
                                  Navigator.push(context, MaterialPageRoute(builder: (context) => NtPostpaid()));
                                },
                                title: Text("NT Postpaid"),
                              ),

                            ],
                          ),
                        ),
                      ),

                      Container(
                        width: 160,
                        child: Card(
                          child: Wrap(
                            children: [
                              Container(
                                height: 70,
                                child: Image(
                                  image: AssetImage("assets/nt.png"),
                                ),
                              ),
                              ListTile(
                                onTap: () {
                                  Navigator.push(context, MaterialPageRoute(builder: (context) => NtCdma()));
                                },
                                title: Text("NT CDMA"),
                              ),

                            ],
                          ),
                        ),
                      ),

                      Container(
                        width: 160,
                        child: Card(
                          child: Wrap(
                            children: [
                              Container(
                                height: 70,
                                child: Image(
                                  image: AssetImage("assets/smartcell.png"),
                                ),
                              ),
                              ListTile(
                                onTap: () {
                                  Navigator.push(context, MaterialPageRoute(builder: (context) => SmartCell()));
                                },
                                title: Text("Smart Cell"),
                              ),

                            ],
                          ),
                        ),
                      ),

                      Container(
                        width: 160,
                        child: Card(
                          child: Wrap(
                            children: [
                              Container(
                                height: 70,
                                child: Image(
                                  image: AssetImage("assets/utl.png"),
                                ),
                              ),
                              ListTile(
                                onTap: () {
                                  Navigator.push(context, MaterialPageRoute(builder: (context) => Utl()));
                                },
                                title: Text("UTL"),
                              ),

                            ],
                          ),
                        ),
                      ),

                      Container(
                        width: 160,
                        child: Card(
                          child: Wrap(
                            children: [
                              Container(
                                height: 70,
                                child: Image(
                                  image: AssetImage("assets/adsl.png"),
                                ),
                              ),
                              ListTile(
                                onTap: () {
                                  Navigator.push(context, MaterialPageRoute(builder: (context) => Adsl()));

                                },
                                title: Text("ADSL"),
                              ),

                            ],
                          ),
                        ),
                      ),

                      Container(
                        width: 160,
                        child: Card(
                          child: Wrap(
                            children: [
                              Container(
                                height: 70,
                                child: Image(
                                  image: AssetImage("assets/ftth.png"),
                                ),
                              ),
                              ListTile(
                                onTap: () {
                                  Navigator.push(context, MaterialPageRoute(builder: (context) => FTTH()));
                                },
                                title: Text("FTTH"),
                              ),

                            ],
                          ),
                        ),
                      ),

                      Container(
                        width: 160,
                        child: Card(
                          child: Wrap(
                            children: [
                              Container(
                                height: 70,
                                child: Image(
                                  image: AssetImage("assets/wimax.png"),
                                ),
                              ),
                              ListTile(
                                onTap: () {
                                  Navigator.push(context, MaterialPageRoute(builder: (context) => Wimax()));

                                },
                                title: Text("WIMAX"),
                              ),

                            ],
                          ),
                        ),
                      ),

                    ],
                  ),
                ),

                SizedBox(height: 20.0,),

                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text("Electricity & Water",
                    style: TextStyle(
                      fontSize: 18,
                    ),
                  ),
                ),

                SizedBox(
                  height: 150,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      Container(
                        width: 160,
                        child: Card(
                          child: Wrap(
                            children: [
                              Container(
                                height: 70,
                                child: Image(
                                  image: AssetImage("assets/nea.png"),
                                ),
                              ),
                              ListTile(
                                onTap: () {
                                  Navigator.push(context, MaterialPageRoute(builder: (context) => Electricity()));
                                },
                                title: Text("NEA"),
                              ),

                            ],
                          ),
                        ),
                      ),

                      Container(
                        width: 160,
                        child: Card(
                          child: Wrap(
                            children: [
                              Container(
                                height: 70,
                                child: Image(
                                  image: AssetImage("assets/nepalwater.png"),
                                ),
                              ),
                              ListTile(
                                onTap: () {
                                  Navigator.push(context, MaterialPageRoute(builder: (context) => Water()));
                                },
                                title: Text("Nepal Water"),
                              ),

                            ],
                          ),
                        ),
                      ),

                    ],
                  ),
                ),


                SizedBox(height: 20.0,),

                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text("TV Payment",
                    style: TextStyle(
                      fontSize: 18,
                    ),
                  ),
                ),

                SizedBox(
                  height: 150,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      Container(
                        width: 160,
                        child: Card(
                          child: Wrap(
                            children: [
                              Container(
                                height: 70,
                                child: Image(
                                  image: AssetImage("assets/dishhome.png"),
                                ),
                              ),
                              ListTile(
                                onTap: () {
                                  Navigator.push(context, MaterialPageRoute(builder: (context) => DishHome()));
                                },
                                title: Text("Dish Home"),
                              ),

                            ],
                          ),
                        ),
                      ),

                      Container(
                        width: 160,
                        child: Card(
                          child: Wrap(
                            children: [
                              Container(
                                height: 70,
                                child: Image(
                                  image: AssetImage("assets/simtv.png"),
                                ),
                              ),
                              ListTile(
                                onTap: () {
                                  Navigator.push(context, MaterialPageRoute(builder: (context) => SimTv()));

                                },
                                title: Text("Sim TV"),
                              ),

                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),

                SizedBox(height: 20.0,),

                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text("Internet Bill Payment",
                    style: TextStyle(
                      fontSize: 18,
                    ),
                  ),
                ),

                SizedBox(
                  height: 150,

                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      Container(
                        width: 160,
                        child: Card(
                          child: Wrap(
                            children: [
                              Container(
                                height: 70,
                                child: Image(
                                  image: AssetImage("assets/vianet.png"),
                                ),
                              ),
                              ListTile(
                                onTap: () {
                                  Navigator.push(context, MaterialPageRoute(builder: (context) => Vianet()));

                                },
                                title: Text("Vianet"),
                              ),

                            ],
                          ),
                        ),
                      ),

                      Container(
                        width: 160,
                        child: Card(
                          child: Wrap(
                            children: [
                              Container(
                                height: 70,
                                child: Image(
                                  image: AssetImage("assets/subisu.png"),
                                ),
                              ),
                              ListTile(
                                onTap: () {
                                  Navigator.push(context, MaterialPageRoute(builder: (context) => Subisu()));
                                },
                                title: Text("Subisu"),
                              ),

                            ],
                          ),
                        ),
                      ),

                      Container(
                        width: 160,
                        child: Card(
                          child: Wrap(
                            children: [
                              Container(
                                height: 70,
                                child: Image(
                                  image: AssetImage("assets/worldlink.png"),
                                ),
                              ),
                              ListTile(
                                onTap: () {
                                  Navigator.push(context, MaterialPageRoute(builder: (context) => WorldLink()));

                                },
                                title: Text("WorldLink"),
                              ),

                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),

                SizedBox(height: 20.0,),

                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text("Movies & Entertainment",
                    style: TextStyle(
                      fontSize: 18,
                    ),
                  ),
                ),

                SizedBox(
                  height: 150,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      Container(
                        width: 160,
                        child: Card(
                          child: Wrap(
                            children: [
                              Container(
                                height: 70,
                                child: Image(
                                  image: AssetImage("assets/bigmovies.png"),
                                ),
                              ),
                              ListTile(
                                onTap: () {
                                  Navigator.push(context, MaterialPageRoute(builder: (context) => BigMovies()));
                                },
                                title: Text("Big Movies"),
                              ),

                            ],
                          ),
                        ),
                      ),

                      Container(
                        width: 160,
                        child: Card(
                          child: Wrap(
                            children: [
                              Container(
                                height: 70,
                                child: Image(
                                  image: AssetImage("assets/fcube.png"),
                                ),
                              ),
                              ListTile(
                                onTap: () {
                                  Navigator.push(context, MaterialPageRoute(builder: (context) => Fcube()));
                                },
                                title: Text("FCUBE Cinemas"),
                              ),

                            ],
                          ),
                        ),
                      ),

                      Container(
                        width: 160,
                        child: Card(
                          child: Wrap(
                            children: [
                              Container(
                                height: 70,
                                child: Image(
                                  image: AssetImage("assets/qcinema.png"),
                                ),
                              ),
                              ListTile(
                                onTap: () {
                                  Navigator.push(context, MaterialPageRoute(builder: (context) => QCinema()));
                                },
                                title: Text("Q's Cinemas"),
                              ),

                            ],
                          ),
                        ),
                      ),

                      Container(
                        width: 160,
                        child: Card(
                          child: Wrap(
                            children: [
                              Container(
                                height: 70,
                                child: Image(
                                  image: AssetImage("assets/bsrmovies.png"),
                                ),
                              ),
                              ListTile(
                                onTap: () {
                                  Navigator.push(context, MaterialPageRoute(builder: (context) => BsrMovies()));
                                },
                                title: Text("BSR Movies"),
                              ),

                            ],
                          ),
                        ),
                      ),

                      Container(
                        width: 160,
                        child: Card(
                          child: Wrap(
                            children: [
                              Container(
                                height: 70,
                                child: Image(
                                  image: AssetImage("assets/qfx.png"),
                                ),
                              ),
                              ListTile(
                                onTap: () {
                                  Navigator.push(context, MaterialPageRoute(builder: (context) => QfxCinemas()));
                                },
                                title: Text("QFX"),
                              ),

                            ],
                          ),
                        ),
                      ),


                    ],
                  ),
                ),

                SizedBox(height: 20,),



                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text("Flight Book",
                    style: TextStyle(
                      fontSize: 18,
                    ),
                  ),
                ),



                SizedBox(
                  height: 80,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      Container(
                        width: 160,
                        child: Card(
                          child: Wrap(
                            children: [
                              ListTile(
                                onTap: () {
                                  Navigator.push(context, MaterialPageRoute(builder: (context) => OneWay()));
                                },
                                title: Text("One Way Flight"),
                              ),

                            ],
                          ),
                        ),
                      ),

                      Container(
                        width: 160,
                        child: Card(
                          child: Wrap(
                            children: [

                              ListTile(
                                onTap: () {
                                  Navigator.push(context, MaterialPageRoute(builder: (context) => TwoWay()));
                                },
                                title: Text("Two Way Flight"),
                              ),

                            ],
                          ),
                        ),
                      ),

                      Container(
                        width: 160,
                        child: Card(
                          child: Wrap(
                            children: [

                              ListTile(
                                onTap: () {
                                    Navigator.push(context, MaterialPageRoute(builder: (context) => Mountain()));
                                },
                                title: Text("Mountain Flight"),
                              ),

                            ],
                          ),
                        ),
                      ),



                    ],
                  ),
                ),


              ],
            ),
        ),
      ),
    );
  }
}
