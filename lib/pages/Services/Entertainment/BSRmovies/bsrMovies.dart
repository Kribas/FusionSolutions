import 'package:flutter/material.dart';
import 'package:fusionsolutions/pages/Services/Entertainment/BSRmovies/nowShowing.dart';
import 'package:fusionsolutions/pages/Services/Entertainment/BSRmovies/comingSoon.dart';


class BsrMovies extends StatefulWidget {
  @override
  _BsrMovies createState() => _BsrMovies();
}

class _BsrMovies extends State<BsrMovies> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.amber,
          title: Text("BSR Movies"),

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
            ]),

      ),
    );
  }
}

