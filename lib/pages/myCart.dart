import 'package:flutter/material.dart';
import 'package:fusionsolutions/models/cart_products.dart';


class MyCart extends StatefulWidget {
  @override
  _CartState createState() => _CartState();
}

class _CartState extends State<MyCart> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.amber,
        title: Text("My Cart",
        style: TextStyle(
          color: Colors.black
        ),
        ),
        
      ),

      body: Cart_Products(),

      bottomNavigationBar: Container(
        color: Colors.white,
        child: Row(
          children: [
            Expanded(
                child: ListTile(
                  title: Text("Total:"),
                  subtitle: Text("\$0"),
                )),
            Expanded(
                child: MaterialButton(onPressed: () {},
                child: Text('Check out', style: TextStyle(color: Colors.white),),
                  color: Colors.amber,
                ))
          ],
        ),
      ),
    );
  }
}



