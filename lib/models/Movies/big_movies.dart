import 'package:flutter/material.dart';

class BigMovies {
  final String image;
  final String movieName;
  final String genre;
  final String runTime;
  final String director;
  final String releaseDate;
  final String synopsis;

  BigMovies({
    @required this.image,
    @required this.movieName,
    @required this.genre,
    @required this.runTime,
    @required this.director,
    @required this.releaseDate,
    @required this.synopsis
  });

}