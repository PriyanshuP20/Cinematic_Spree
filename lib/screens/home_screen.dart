import 'package:flutter/material.dart';
import 'package:login/data/constants.dart';


import 'home/app_bar.dart';
import 'home/background_list_view.dart';
import 'home/movie_list_view.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  Size get size => MediaQuery.of(context).size;

  // to Center the movie List View
  double get movieItemWidth => size.width / 2 +48;

  ScrollController backgroundScrollController = ScrollController();
  ScrollController movieScrollController = ScrollController();

  @override
  Widget build(BuildContext context) {

    // connecting Background list and Movie list
    movieScrollController.addListener(() {
      backgroundScrollController.jumpTo(
          movieScrollController.offset * (size.width / movieItemWidth)
      );
    });

    return Scaffold(
      backgroundColor: black,
      body: Stack(
        alignment: Alignment.bottomCenter,
        children:[
          //Background of home screen
          BackgroundListView(backgroundScrollController),

          //Movie detail List view
          MovieListView(movieScrollController, movieItemWidth,),

          //Appbar
          CustomAppBar(),
        ],
      ),
    );
  }
}
