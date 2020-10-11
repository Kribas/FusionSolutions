import 'package:flutter/material.dart';
import 'HomePage.dart';
import 'package:fusionsolutions/pages/myCart.dart';
import 'package:fusionsolutions/HomePage.dart';
import 'package:fusionsolutions/pages/Services/Services.dart';
import 'package:fusionsolutions/pages/Account.dart';
import 'package:fusionsolutions/pages/Login.dart';

void main() {
  runApp(App());
}

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes:  {
        '/login' : (context) => LoginScreen(),
        '/mycart' : (context) => MyCart(),
      },


      debugShowCheckedModeBanner: false,
      home: Home(),
      theme: ThemeData(
        primaryColor: Colors.amber,
        fontFamily: "poppins",
        scaffoldBackgroundColor: Colors.white
      ),
    );
  }
}

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {

  int _currentIndex = 0;
  final List<Widget> _children = [
    HomePage(),
    Services(),
    Account()
  ];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _children[_currentIndex],

      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Colors.amber,
        currentIndex: _currentIndex,
          type: BottomNavigationBarType.fixed,
          items: [
            BottomNavigationBarItem(
                icon: Icon(Icons.home),
                title: Text("Home"),
            ),

            BottomNavigationBarItem(
              icon: Icon(Icons.message),
              title: Text("Services"),
            ),



            BottomNavigationBarItem(
              icon: Icon(Icons.person),
              title: Text("Account"),
            ),


          ],
          onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
    },
      ),
    );
  }
}




