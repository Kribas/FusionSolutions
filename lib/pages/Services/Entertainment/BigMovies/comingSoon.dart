import 'package:flutter/material.dart';
import 'package:fusionsolutions/models/Movies/big_movies.dart';
import 'package:page_transition/page_transition.dart';

import 'package:fusionsolutions/pages/MovieDetails/BigMoviesDetail.dart';

class ComingSoon extends StatefulWidget {
  @override
  _ComingSoonState createState() => _ComingSoonState();
}

class _ComingSoonState extends State<ComingSoon> {

  List<BigMovies> movies = [
    BigMovies(
        image: "assets/product1.jpg",
        movieName: "Malang",
        genre: "Comedy",
        runTime: "3 hours",
        director: "Kribas Rimal",
        releaseDate: "14th June, 2020",
        synopsis: "asadasdsas"),
    BigMovies(
        image: "assets/product1.jpg",
        movieName: "Joker",
        genre: "Comedy",
        runTime: "3 hours",
        director: "Kribas Rimal",
        releaseDate: "14th June, 2020",
        synopsis: "asadasdsas"),
    BigMovies(
        image: "assets/product1.jpg",
        movieName: "Sanglo",
        genre: "Comedy",
        runTime: "3 hours",
        director: "Kribas Rimal",
        releaseDate: "14th June, 2020",
        synopsis: "asadasdsas"),
    BigMovies(
        image: "assets/product1.jpg",
        movieName: "Bad Boys",
        genre: "Comedy",
        runTime: "3 hours",
        director: "Kribas Rimal",
        releaseDate: "14th June, 2020",
        synopsis: "asadasdsas"),
    BigMovies(
        image: "assets/product1.jpg",
        movieName: "Transformers",
        genre: "Action",
        runTime: "3 hours",
        director: "Kribas Rimal",
        releaseDate: "14th June, 2020",
        synopsis: "asadasdsas"),
    BigMovies(
        image: "assets/product1.jpg",
        movieName: "Avengers",
        genre: "Action",
        runTime: "3 hours",
        director: "Kribas Rimal",
        releaseDate: "14th June, 2020",
        synopsis: "asadasdsas"),

  ];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              GridView.count(

                  physics: ClampingScrollPhysics(),
                  shrinkWrap: true,
                  childAspectRatio: 1/1.25,
                  children: movies.map((movie) {
                    return Stack(
                      children: [
                        Container(
                          child: Column(
                            children: [
                              AspectRatio(
                                aspectRatio: 1/1,
                                child: Image(
                                    image: AssetImage(movie.image)),
                              ),
                              Text(movie.movieName),

                            ],
                          ),
                        ),

                        Material(
                          color: Colors.transparent,
                          child: InkWell(
                            onTap: () {

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
