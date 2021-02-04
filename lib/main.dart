import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:new_app_architecture/ui/popular/bloc/popular_movies_bloc.dart';
import 'package:new_app_architecture/ui/popular/popular_movies_screen.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: BlocProvider<PopularMoviesBloc>(
        create: (context) => PopularMoviesBloc()..add(LoadPopularMovies()),
        child: PopularMoviesScreen(),
      ),
    );
  }
}
