import 'package:flutter/material.dart';
import 'package:new_app_architecture/ui/popular/popular_movies_screen.dart';
import 'package:new_app_architecture/ui/popular/viewmodel/popular_movie_viewmodel.dart';
import 'package:provider/provider.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: ChangeNotifierProvider<PopularMovieVieWModel>(
        create: (context) => PopularMovieVieWModel()..loadMoviePopular(),
        child: PopularMoviesScreen(),
      ),
    );
  }
}
