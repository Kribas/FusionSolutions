import 'package:flutter/material.dart';
import 'package:fusionsolutions/pages/Services/Entertainment/qfx/comingSoon.dart';
import 'package:fusionsolutions/pages/Services/Entertainment/qfx/nowShowing.dart';


class QfxCinemas extends StatefulWidget {
  @override
  _QfxCinemas createState() => _QfxCinemas();
}

class _QfxCinemas extends State<QfxCinemas> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.amber,
          title: Text("Qfx Cinemas"),

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

