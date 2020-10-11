import 'package:flutter/material.dart';
import 'package:fusionsolutions/models/Product.dart';

class Cart_Products extends StatefulWidget {
  @override
  _Cart_ProductsState createState() => _Cart_ProductsState();
}

class _Cart_ProductsState extends State<Cart_Products> {

  var Products_on_the_cart = [
    {
      "name": "Blazer",
      "picture" : "assets/blazer1.jpeg",
      "price" : 100,
      "color" : "white",
      "quantity" : 1
    },

    {
      "name": "Shoes",
      "picture" : "assets/shoe1.jpg",
      "price" : 100,
      "color" : "white",
      "quantity" : 1
    }
  ];


  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: Products_on_the_cart.length,
        itemBuilder: (context,index) {
          return Single_Cart_product(
            cart_product_name: Products_on_the_cart[index]["name"],
            cart_product_image: Products_on_the_cart[index]["picture"],
            cart_product_price: Products_on_the_cart[index]["price"],
            cart_product_color: Products_on_the_cart[index]["color"],
            cart_product_qty: Products_on_the_cart[index]["quantity"],

          );
        }
    );
  }
}

class Single_Cart_product extends StatelessWidget {

  final cart_product_name;
  final  cart_product_image;
  final  cart_product_price;
  final cart_product_color;
  final  cart_product_qty;

  Single_Cart_product({this.cart_product_name,this.cart_product_image,this.cart_product_price,this.cart_product_color,this.cart_product_qty});




  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        leading: Image.asset(cart_product_image,
        width: 80,
          height: 80,
        ),
        title: Text(cart_product_name),
        subtitle: Column(
          children: [
            Row(
              children: [
                Padding(
                    padding: EdgeInsets.all(8.0),
                  child: Text("Color:"),
                ),
                Padding(padding: EdgeInsets.all(8.0),
                  child: Text(cart_product_color),
                ),


              ],
            ),

            Container(
              alignment: Alignment.topLeft,
              child: Text("\$${cart_product_price}",
              style: TextStyle(fontSize: 17.0,
              fontWeight: FontWeight.bold,
                color: Colors.amber
              ),
              ),
            )
          ],
        ),

        trailing: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Expanded(
              child: IconButton(
                  icon: Icon(Icons.arrow_drop_up),
                  onPressed: () {}),
            ),

            Expanded(child: Text("$cart_product_qty")),

            Expanded(
              child: IconButton(
                  icon: Icon(Icons.arrow_drop_down),
                  onPressed: () {}),
            )
          ],
        ),

      ),
    );
  }
}

