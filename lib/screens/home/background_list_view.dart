import 'package:flutter/material.dart';
import '../../data/constants.dart';
import '../../data/data.dart';

class BackgroundListView extends StatefulWidget {

  final ScrollController backgroundScrollController;

  BackgroundListView(this.backgroundScrollController);

  @override
  _BackgroundListViewState createState() => _BackgroundListViewState();
}

class _BackgroundListViewState extends State<BackgroundListView> {

  var movieData = MovieData();

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
        return Container(
          width: size.width,
          height: size.height,
          child: Stack(
            alignment: Alignment.topCenter,
            children: <Widget>[
              Positioned(
                left: -size.width / 1.8,
                right: -size.width /1.8,
                bottom: -size.height/4,
                child: Image(
                  image: AssetImage('assets/images/background.jpg'),
                  fit: BoxFit.cover,
                ),
              ),
              Container(color: black.withOpacity(.1),),
              Container(
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                      colors: [
                        black.withOpacity(.25),
                        black.withOpacity(.9)
                      ],
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      stops: [ 0.5, 0.9]),
                ),
              ),
            ],
          ),
        );
      }
  //   );
  // }
}
