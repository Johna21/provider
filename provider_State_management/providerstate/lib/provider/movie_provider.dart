import 'dart:math';

import 'package:flutter/material.dart';
import 'package:providerstate/model/movies.dart';

// All list of moveis
final List<Movie> initialData = List.generate(50,
 (index) => Movie(
   title: "Movie $index",
   runtime: "${Random().nextInt(100)+60} minutes"
   ));

   class MovieProvider with ChangeNotifier{

    //  All movies list
     final List<Movie> _movies = initialData;

    //  Retriev all movies

    List<Movie> get movies => _movies;


    // All favorite movies

    final List<Movie> _myList = [];

    // Retrieve favorite movies

    List<Movie> get myList => _myList;

    // add favarotie movies

    void addToList(Movie movie){
      _myList.add(movie);
      notifyListeners();
    }

    void removeFromList(Movie movie){
      _myList.remove(movie);
      notifyListeners();
    }


   }