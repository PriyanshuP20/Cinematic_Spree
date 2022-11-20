import 'package:flutter/material.dart';
import '../model/cast_model.dart';
import '../model/movie_model.dart';

class MovieData {
  List<MovieModel> movieList = [];

  MovieData() {
    movieList = [];

    movieList.add(
      MovieModel(
          id: 0,
          name: 'Drishyam 2',
          rating: 8.0,
          genre: ["Crime", "Thriller", "Drama",],
          director: 'Abhishek Pathak',
          storyLine:
          'Seven years after the case related to Vijay and his family was closed, a series of unexpected events brings a truth to light that threatens to change everything for the Salgaonkars.',
          image: Image.asset("assets/images/drishyam_2.jpg"),
          imageLogo: Image.asset("assets/images/drishyamlogo.png" ),
          castList: [
            MovieCastModel(
              name: "Ajay Devgan",
              photo: Image.asset("assets/images/cast/Ajay_devgan.png"),
            ),
            MovieCastModel(
              name: "Akashaye Khanna",
              photo: Image.asset("assets/images/cast/Akashaye_khanna.png"),
            ),
            MovieCastModel(
              name: "Ishita Datta",
              photo: Image.asset("assets/images/cast/ishihta_datta.png"),
            ),

          ]),
    );
    movieList.add(
      MovieModel(
          id: 1,
          name: 'Wakanda Forever',
          rating: 8.5,
          genre: ["Fantasy", "Drama", "Marvel", "Superhero"],
          director: 'Ryan Coogler',
          storyLine:
          "Queen Ramonda, Shuri, M'Baku, Okoye and the Dora Milaje fight to protect their nation from intervening world powers in the wake of King T'Challa's death. As the Wakandans strive to embrace their next chapter, the heroes must band together with Nakia and Everett Ross to forge a new path for their beloved kingdom.",
          image: Image.asset("assets/images/black_panther.jpg"),
          imageLogo: Image.asset("assets/images/black_panther_logo.png"),
          castList: [
            MovieCastModel(
              name: "Chadwick",
              photo: Image.asset("assets/images/cast/chadwick.png"),
            ),
            MovieCastModel(
              name: "Letitia Wright",
              photo: Image.asset("assets/images/cast/letitia_wright.png"),
            ),
            MovieCastModel(
              name: "Tenoch Huerta",
              photo: Image.asset("assets/images/cast/tenoch_huerta.png"),
            ),

          ]),
    );
    movieList.add(
      MovieModel(
          id: 2,
          name: 'Sooraj Barjatya',
          rating: 5.7,
          genre: ["Friends", "Adventure", "Fantasy"],
          director: 'Tim Burton',
          storyLine:
          "Three friends leave their cozy lives behind to embark on a journey to Mount Everest.",
          image: Image.asset("assets/images/uunchai.jpg"),
          imageLogo: Image.asset("assets/images/unchai_logo.png"),
          castList: [
            MovieCastModel(
              name: "Amithabh Bacchan",
              photo: Image.asset("assets/images/cast/amithabh_bacchan.png"),
            ),
            MovieCastModel(
              name: "Praneeti Chopra",
              photo: Image.asset("assets/images/cast/Praneeti_chopra.png"),
            ),
          ]),
    );

  }
}


