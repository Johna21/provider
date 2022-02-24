import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:providerstate/provider/movie_provider.dart';


class MyListScreen extends StatefulWidget {
  MyListScreen({Key? key}) : super(key: key);

  @override
  State<MyListScreen> createState() => _MyListScreenState();
}

class _MyListScreenState extends State<MyListScreen> {
  @override
  Widget build(BuildContext context) {
    final _myList = context.watch<MovieProvider>().myList;
    return Scaffold(
      appBar: AppBar(
        title: Text("My List (${_myList.length})"),
      ),
      body: ListView.builder(
        itemCount: _myList.length,
        itemBuilder: (_,index){
          final currentMovie = _myList[index];
          return Card(
            key: ValueKey(currentMovie.title),
            elevation: 4,
            child: ListTile(
              title: Text(currentMovie.title),
              subtitle: Text(currentMovie.runtime ?? ''),
              trailing: TextButton(
                child: Text('Remove',
                style: TextStyle(color: Colors.red),
                ),
                onPressed: (){
                  context.read<MovieProvider>().removeFromList(currentMovie);
                },
              ),
            ),
          );
        }),
    );
  }
}