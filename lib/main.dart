import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home:  Scaffold(
        appBar: AppBar(title: Text("This is the App title"),),
        body: ListView(
          children: [
            MovieItem(Movie(name: "Test1", rate: 9.2, image: '/images/m1.jpg',genre: 'Drama')),
            MovieItem(Movie(name: "Test1", rate: 9.2, image: '/images/m2.jpg',genre: 'Drama')),
            MovieItem(Movie(name: "Test1", rate: 9.2, image: '/images/m3.jpg',genre: 'Drama')),
            MovieItem(Movie(name: "Test1", rate: 9.2, image: '/images/m4.jpg',genre: 'Drama'))

          ],
        )


      )
    );
  }
}



class MovieItem extends StatelessWidget{

  final Movie movie;

  MovieItem(this.movie);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(5),
      height: 120,
      child: Card(
        child: Row(

          children: [
            Image.asset(movie.image),
            Expanded(
                child: Container(
                  padding: EdgeInsets.all(8),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(movie.name, style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),),
                      Text(movie.genre),
                      Text(movie.rate.toString())
                    ],
                  ),

                ))
          ],
        ),
      ),
    );
  }
}

class Movie{
  String name;
  String genre;
  double rate;
  String image;

  Movie({required this.name, required this.genre, required this.rate, required this.image });
}

List<Movie> movies = [
  Movie(name: "test1", genre: "Drama", rate: 9.2, image: '/images/m2'),
  Movie(name: "test2", genre: "Drama", rate: 9.2, image: '/images/m3'),
  Movie(name: "test3", genre: "Drama", rate: 9.2, image: '/images/m4'),
  Movie(name: "test4", genre: "Drama", rate: 9.2, image: '/images/m5'),
];

