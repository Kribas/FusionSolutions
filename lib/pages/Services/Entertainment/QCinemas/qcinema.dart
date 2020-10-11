import 'package:flutter/material.dart';
import 'package:fusionsolutions/pages/Services/Entertainment/QCinemas/nowShowing.dart';
import 'package:fusionsolutions/pages/Services/Entertainment/QCinemas/comingSoon.dart';


class QCinema extends StatefulWidget {
  @override
  _QCinemaState createState() => _QCinemaState();
}

class _QCinemaState extends State<QCinema> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.amber,
          title: Text("Q's Cinemas"),

          bottom: TabBar(
              labelColor: Colors.white,
              unselectedLabelColor: Colors.white,
              tabs: [
                Tab(
                  child: Text('Now Showing'),
                ),
                Tab(
                  child: Text('Coming Soon'),
                )
              ]),
        ),

        body: TabBarView(
            children: [
              NowShowing(),
              ComingSoon()
            ]
        ),



      ),
    );
  }
}

