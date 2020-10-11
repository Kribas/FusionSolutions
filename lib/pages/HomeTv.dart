import 'package:flutter/material.dart';
import 'package:fusionsolutions/models/Product.dart';
import 'package:fusionsolutions/pages/ProductDetail.dart';

class HomeTv extends StatefulWidget {
  @override
  _HomeTvState createState() => _HomeTvState();
}

class _HomeTvState extends State<HomeTv> {

  List<Product> products = [
    Product(
        productName: "iPad mini",
        image: "assets/product1.jpg",
        price: "100",
        description: "Repudiandae quibusdam quis harum odit.Autem sunt sit. Neque sapiente officia laudantium voluptatem dolores itaque dolore odio. Voluptatem reprehenderit beatae eum eligendi dolorem laborum voluptate nihil vel."),

    Product(
        productName: "iPad Pro",
        image: "assets/product2.jpg",
        price: "100",
        description: "Repudiandae quibusdam quis harum odit.Autem sunt sit. Neque sapiente officia laudantium voluptatem dolores itaque dolore odio. Voluptatem reprehenderit beatae eum eligendi dolorem laborum voluptate nihil vel."),


    Product(
        productName: "iPad Pro Max",
        image: "assets/product3.jpg",
        price: "100",
        description: "Repudiandae quibusdam quis harum odit.Autem sunt sit. Neque sapiente officia laudantium voluptatem dolores itaque dolore odio. Voluptatem reprehenderit beatae eum eligendi dolorem laborum voluptate nihil vel."),

    Product(
        productName: "Apple Watch Series 3",
        image: "assets/product4.jpg",
        price: "100",
        description: "Repudiandae quibusdam quis harum odit.Autem sunt sit. Neque sapiente officia laudantium voluptatem dolores itaque dolore odio. Voluptatem reprehenderit beatae eum eligendi dolorem laborum voluptate nihil vel."),

    Product(
        productName: "Apple Watch Series 4",
        image: "assets/product5.jpg",
        price: "100",
        description: "Repudiandae quibusdam quis harum odit.Autem sunt sit. Neque sapiente officia laudantium voluptatem dolores itaque dolore odio. Voluptatem reprehenderit beatae eum eligendi dolorem laborum voluptate nihil vel."),

    Product(
        productName: "Macbook Pro 16 inch",
        image: "assets/product6.jpg",
        price: "100",
        description: "Repudiandae quibusdam quis harum odit.Autem sunt sit. Neque sapiente officia laudantium voluptatem dolores itaque dolore odio. Voluptatem reprehenderit beatae eum eligendi dolorem laborum voluptate nihil vel."),

    Product(
        productName: "Macbook Pro",
        image: "assets/product7.jpg",
        price: "100",
        description: "Repudiandae quibusdam quis harum odit.Autem sunt sit. Neque sapiente officia laudantium voluptatem dolores itaque dolore odio. Voluptatem reprehenderit beatae eum eligendi dolorem laborum voluptate nihil vel."),

    Product(
        productName: "iMac 4k Retina",
        image: "assets/product8.jpg",
        price: "100",
        description: "Repudiandae quibusdam quis harum odit.Autem sunt sit. Neque sapiente officia laudantium voluptatem dolores itaque dolore odio. Voluptatem reprehenderit beatae eum eligendi dolorem laborum voluptate nihil vel."),


  ];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home and Tv"),
        backgroundColor: Colors.amber,
      ),

      body: Container(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 20,),

              GridView.count(

                  physics: ClampingScrollPhysics(),
                  shrinkWrap: true,
                  childAspectRatio: 1/1.25,
                  children: products.map((product) {
                    return Stack(
                      children: [
                        Container(
                          child: Column(
                            children: [
                              Hero(
                                tag: product.image,
                                child: AspectRatio(
                                  aspectRatio: 1/1,
                                  child: Image(
                                      image: AssetImage(product.image)),
                                ),
                              ),
                              Text(product.productName),
                              Text("${product.price}\$",
                                  style: TextStyle(fontSize: 18,fontWeight: FontWeight.w700, color: Colors.amber))
                            ],
                          ),
                        ),

                        Material(
                          color: Colors.transparent,
                          child: InkWell(
                            onTap: () {
                              Navigator.push(context, MaterialPageRoute(
                                  builder: (context) => ProductPage(
                                    product: product,
                                  ))
                              );
                            },
                          ),
                        )

                      ],
                    );
                  }).toList(),
                  crossAxisCount: 2)
            ],
          ),
        ),
      ),

    );
  }
}
