import 'package:flutter/material.dart';
import 'package:fusionsolutions/pages/MovieDetails/BuyTicket/today.dart';
import 'package:fusionsolutions/pages/MovieDetails/BuyTicket/tomorrow.dart';


class BuyTickets extends StatefulWidget {
  @override
  _BuyTicketsState createState() => _BuyTicketsState();
}

class _BuyTicketsState extends State<BuyTickets> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.amber,
          elevation: 0,
          title: Text("Buy Tickets"),
          bottom: TabBar(
              labelColor: Colors.white,
              unselectedLabelColor: Colors.white,
              tabs: [
                Tab(
                  child: Text('Today'),
                ),
                Tab(
                  child: Text('Tomorrow'),
                )
              ]),
        ),

        body: TabBarView(
            children: [
              Today(),
              Tomorrow()
            ]
        ),

      ),
    );
  }
}
