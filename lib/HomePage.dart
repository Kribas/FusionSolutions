import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:carousel_slider/carousel_controller.dart';
import 'package:fusionsolutions/pages/ProductDetail.dart';
import 'package:fusionsolutions/models/Product.dart';
import 'package:fusionsolutions/pages/electronicDevices.dart';
import 'pages/myCart.dart';
import 'package:page_transition/page_transition.dart';
import 'package:fusionsolutions/pages/HomeTv.dart';
import 'package:fusionsolutions/pages/women.dart';
import 'package:fusionsolutions/pages/men.dart';
import 'package:fusionsolutions/pages/health.dart';
import 'package:fusionsolutions/pages/babytoys.dart';
import 'package:fusionsolutions/pages/watchaccessories.dart';
import 'package:fusionsolutions/pages/groceriespets.dart';
import 'package:fusionsolutions/pages/sportsoutdoors.dart';
import 'package:fusionsolutions/pages/automotive.dart';



class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  Icon cusIcon = Icon(Icons.search);
  Widget cusSearchBar = Text("FusionSolutions",
    style: TextStyle(
        color: Colors.black
    ),
  );


  List bannerAdSlider = [
    "assets/banner1.jpg",
    "assets/banner2.jpg",
    "assets/banner3.jpg",
    "assets/banner4.jpg",
    "assets/banner5.jpg",
    "assets/banner6.jpg",

  ];




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

    Product(
        productName: "T-Shirts ",
        image: "assets/product9.jpg",
        price: "100",
        description: "Repudiandae quibusdam quis harum odit.Autem sunt sit. Neque sapiente officia laudantium voluptatem dolores itaque dolore odio. Voluptatem reprehenderit beatae eum eligendi dolorem laborum voluptate nihil vel."),

    Product(
        productName: "Ethnic Wear - Dress",
        image: "assets/product10.jpg",
        price: "100",
        description: "Repudiandae quibusdam quis harum odit.Autem sunt sit. Neque sapiente officia laudantium voluptatem dolores itaque dolore odio. Voluptatem reprehenderit beatae eum eligendi dolorem laborum voluptate nihil vel."),

    Product(
        productName: "Dress",
        image: "assets/product11.jpg",
        price: "100",
        description: "Repudiandae quibusdam quis harum odit.Autem sunt sit. Neque sapiente officia laudantium voluptatem dolores itaque dolore odio. Voluptatem reprehenderit beatae eum eligendi dolorem laborum voluptate nihil vel."),

    Product(
        productName: "T-Shirt",
        image: "assets/product12.jpg",
        price: "100",
        description: "Repudiandae quibusdam quis harum odit.Autem sunt sit. Neque sapiente officia laudantium voluptatem dolores itaque dolore odio. Voluptatem reprehenderit beatae eum eligendi dolorem laborum voluptate nihil vel."),


  ];



  @override
  Widget build(BuildContext context) {

    SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle(
        statusBarColor: Colors.white,
        statusBarBrightness: Brightness.light,
        statusBarIconBrightness: Brightness.dark,
        systemNavigationBarColor: Colors.white,
        systemNavigationBarIconBrightness: Brightness.dark
      )
    );

    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: cusSearchBar,
        backgroundColor: Colors.amber,
        brightness: Brightness.light,
        elevation: 0,
        actionsIconTheme: IconThemeData(
          color: Colors.black
        ),
        iconTheme: IconThemeData(
          color: Colors.black
        ),


        actions: [

        IconButton(
          icon: Icon(EvaIcons.search),
            onPressed: () {
            setState(() {
              if(this.cusIcon.icon == Icons.search) {
                this.cusIcon = Icon(Icons.cancel);
                this.cusSearchBar = TextField(
                  textInputAction: TextInputAction.go,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16
                  ),
                );

              }
              else {
                this.cusIcon = Icon(Icons.search);
                this.cusSearchBar = Text("FusionSolutions");
              }
            });

            }),

              IconButton(
                  icon: Icon(EvaIcons.shoppingCart),
                  onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => MyCart()));
                  }),

          ],
        ),

      drawer: Drawer(
          child: ListView(
            children: [

              ListTile(
                onTap: () {
                  Navigator.push(context,PageTransition(child: ElectronicDevices(), type: PageTransitionType.leftToRight));
                },
                title: Text("Electroonic Devices"),
                trailing: Icon(EvaIcons.arrowRight),
              ),

              ListTile(
                onTap: () {
                  Navigator.push(context,PageTransition(child: HomeTv(), type: PageTransitionType.leftToRight));
                },
                title: Text("TV & Home App"),
                trailing: Icon(EvaIcons.arrowRight),
              ),
              ListTile(
                onTap: () {
                  Navigator.push(context,PageTransition(child: Women(), type: PageTransitionType.leftToRight));
                },
                title: Text("Women's Fashion"),
                trailing: Icon(EvaIcons.arrowRight),
              ),
              ListTile(
                onTap: () {
                  Navigator.push(context,PageTransition(child: Men(), type: PageTransitionType.leftToRight));
                },
                title: Text("Men's Fashion"),
                trailing: Icon(EvaIcons.arrowRight),
              ),
              ListTile(
                onTap: () {
                  Navigator.push(context,PageTransition(child: Health(), type: PageTransitionType.leftToRight));

                },
                title: Text("Health & Beauty"),
                trailing: Icon(EvaIcons.arrowRight),
              ),
              ListTile(
                onTap: () {
                  Navigator.push(context,PageTransition(child: WatchAccessories(), type: PageTransitionType.leftToRight));
                },
                title: Text("Watch & Accessories"),
                trailing: Icon(EvaIcons.arrowRight),
              ),
              ListTile(
                onTap: () {
                  Navigator.push(context,PageTransition(child: BabyToys(), type: PageTransitionType.leftToRight));
                },
                title: Text("Babies & Toys"),
                trailing: Icon(EvaIcons.arrowRight),
              ),
              ListTile(
                onTap: () {
                  Navigator.push(context,PageTransition(child: GroceriesPets(), type: PageTransitionType.leftToRight));
                },
                title: Text("Groceries & Pets"),
                trailing: Icon(EvaIcons.arrowRight),
              ),
              ListTile(
                onTap: () {
                  Navigator.push(context,PageTransition(child: SportsOutdoors(), type: PageTransitionType.leftToRight));
                },
                title: Text("Sports & Outdoors"),
                trailing: Icon(EvaIcons.arrowRight),
              ),
              ListTile(
                onTap: () {
                  Navigator.push(context,PageTransition(child: Automotive(), type: PageTransitionType.leftToRight));
                },
                title: Text("Automotive & Motorbike"),
                trailing: Icon(EvaIcons.arrowRight),
              ),

            ],
          ),
      ),

      body: Container(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [

              //banner ad slider

              SizedBox(height: 20,),


              Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text("Flash Deals",
                  style: TextStyle(
                    fontSize: 18
                  ),
                  ),
              ),

              SizedBox(height: 20,),

              CarouselSlider(
                options: CarouselOptions(
                    aspectRatio: 16/9,
                    autoPlay: true
                ),
                items: bannerAdSlider.map((i) {
                  return Builder(
                    builder: (BuildContext context) {
                      return Container(
                        width: MediaQuery.of(context).size.width,
                        margin: EdgeInsets.symmetric(horizontal: 5.0),

                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(16),
                          child: Image(
                            image: AssetImage(i),
                            fit: BoxFit.cover,
                            alignment: Alignment.topCenter,
                          ),
                        ),

                      );
                    },
                  );
                }).toList(),

              ),


              SizedBox(height: 20,),

              Padding(padding: EdgeInsets.all(8.0),
                child: Text("Deals of the day",
                style: TextStyle(
                  fontSize: 18),
                ),
                ),

              SizedBox(height: 20,),

              //banner ad slider
              CarouselSlider(
                options: CarouselOptions(
                    aspectRatio: 16/9,
                    autoPlay: true
                ),
                items: bannerAdSlider.map((i) {
                  return Builder(
                    builder: (BuildContext context) {
                      return Container(
                        width: MediaQuery.of(context).size.width,
                        margin: EdgeInsets.symmetric(horizontal: 5.0),

                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(16),
                          child: Image(
                            image: AssetImage(i),
                            fit: BoxFit.cover,
                            alignment: Alignment.topCenter,
                          ),
                        ),

                      );
                    },
                  );
                }).toList(),

              ),

              SizedBox(height: 20,),




              Padding(
                  padding: EdgeInsets.all(8.0),
                child: Text("Featured Products",style: TextStyle(fontSize: 18),),
              ),

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
