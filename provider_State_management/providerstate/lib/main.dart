import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:providerstate/provider/movie_provider.dart';
import 'package:providerstate/screens/home_screen.dart';

void main() {
  runApp(ChangeNotifierProvider<MovieProvider>(
    child: MyApp(),
    create: (_) => MovieProvider(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Provider Sample',
      theme: ThemeData(
        primarySwatch: Colors.indigo,
      ),
      home: HomeScreen(),
    );
  }
}