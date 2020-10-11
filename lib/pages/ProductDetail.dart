import 'package:flutter/material.dart';
import 'package:fusionsolutions/models/Product.dart';
import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';


class ProductPage extends StatelessWidget {

  final Product product;

  ProductPage({@required this.product});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(product.productName,
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
                tag: product.image,
                child: AspectRatio(
                    aspectRatio: 1/1,
                  child: Image(
                      image: AssetImage(product.image)
                  ),
                ),
              ),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              child: Text(product.productName,
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
                    child: Text("${product.price}\$",
                      style: TextStyle(
                        fontSize: 50,
                        fontWeight: FontWeight.w700,
                        color: Colors.amber,
                      ),
                    ),
                  ),

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
                      child: OutlineButton.icon(
                          onPressed: () {},
                          icon: Icon(EvaIcons.shoppingCart),
                          label: Text("Cart")
                      ),
                    ),
                    SizedBox(width: 10,),
                    Expanded(
                      child: RaisedButton.icon(
                          onPressed: () {},
                          textColor: Colors.black,
                          color: Colors.amber,
                          icon: Icon(EvaIcons.creditCard),
                          label: Text("Buy Now")),
                    )
                  ],
                ),

              ),


              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 0),
                child: Text(product.description,
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
