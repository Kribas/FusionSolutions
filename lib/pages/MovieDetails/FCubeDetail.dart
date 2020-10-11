import 'package:flutter/material.dart';
import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:fusionsolutions/models/Movies/fcube_cinemas.dart';
import 'package:page_transition/page_transition.dart';

import 'BuyTicket/buyTicket.dart';



class FCubeDetail extends StatelessWidget {

  final FCubeCinemas fCubeCinemas;

  FCubeDetail({@required this.fCubeCinemas});


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(fCubeCinemas.movieName,
          style: TextStyle(
              color: Colors.black
          ),
        ),
        backgroundColor: Colors.white,
        brightness: Brightness.light,
        elevation: 0,
        actionsIconTheme: IconThemeData(
            color: Colors.black
        ),
        iconTheme: IconThemeData(
            color: Colors.black
        ),

        actions: [

        ],
      ),

      body: Container(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Hero(
                tag: fCubeCinemas.image,
                child: AspectRatio(
                  aspectRatio: 1/1,
                  child: Image(
                      image: AssetImage(fCubeCinemas.image)
                  ),
                ),
              ),

              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                child: Text(fCubeCinemas.movieName,
                  style: TextStyle(
                    fontSize: 24,
                  ),
                ),
              ),

              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [


                    Expanded(
                        child: RatingBar(
                            itemSize: 20,
                            initialRating: 3,
                            minRating: 1,
                            direction: Axis.horizontal,
                            allowHalfRating: true,
                            itemCount: 5,
                            itemPadding: EdgeInsets.symmetric(horizontal: 4),
                            itemBuilder: (context,_) {
                              return Icon(Icons.star,
                                color: Colors.amber,
                              );
                            },
                            onRatingUpdate: (rating) {

                            })
                    ),


                    IconButton(
                        icon: Icon(EvaIcons.share),
                        onPressed: () {

                        })

                  ],
                ),
              ),

              Padding(padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [

                    Expanded(
                      child: RaisedButton.icon(
                          onPressed: () {
                            Navigator.push(context,PageTransition(child: BuyTickets(), type: PageTransitionType.leftToRight));

                          },
                          textColor: Colors.black,
                          color: Colors.amber,
                          icon: Icon(Icons.movie),
                          label: Text("Buy/Reserve Ticket")),
                    )
                  ],
                ),

              ),


              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 0),
                child: Text("Genere: ${fCubeCinemas.genre}",
                  style: TextStyle(
                    fontSize: 18,
                  ),
                ),
              ),

              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 0),
                child: Text("Run Time: ${fCubeCinemas.runTime}",
                  style: TextStyle(
                    fontSize: 18,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 0),
                child: Text("Director: ${fCubeCinemas.director}",
                  style: TextStyle(
                    fontSize: 18,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 0),
                child: Text("Release Date: ${fCubeCinemas.releaseDate}",
                  style: TextStyle(
                    fontSize: 18,
                  ),
                ),
              ),



              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  height: 200,
                  width: 380,
                  child: Card(
                    elevation: 5,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text('Ratings & Reviews',
                        style: TextStyle(
                            fontSize: 20
                        ),
                      ),
                    ),
                  ),
                ),
              )

            ],
          ),
        ),

      ),
    );
  }
}
