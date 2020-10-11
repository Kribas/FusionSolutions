import 'package:flutter/material.dart';
import 'package:fusionsolutions/pages/Services/Entertainment/BigMovies/nowShowing.dart';
import 'package:fusionsolutions/pages/Services/Entertainment/BigMovies/comingSoon.dart';


class BigMovies extends StatefulWidget {
  @override
  _BigMoviesState createState() => _BigMoviesState();
}

class _BigMoviesState extends State<BigMovies> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.amber,
          elevation: 0,
          title: Text("Big Movies"),
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

