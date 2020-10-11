import 'package:flutter/material.dart';
import 'package:fusionsolutions/pages/Services/Entertainment/Fcube/nowShowing.dart';
import 'package:fusionsolutions/pages/Services/Entertainment/Fcube/comingSoon.dart';


class Fcube extends StatefulWidget {
  @override
  _FcubeState createState() => _FcubeState();
}

class _FcubeState extends State<Fcube> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.amber,
          title: Text("Fcube"),

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
              ComingSoon(),
            ]
        )

      ),
    );
  }
}

