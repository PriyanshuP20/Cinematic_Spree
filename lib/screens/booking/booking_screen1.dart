import 'package:flutter/material.dart';
import 'package:login/screens/booking/pay_button.dart';
import 'package:login/screens/booking/seat_selector.dart';
import 'package:login/screens/booking/time_selector.dart';


import 'pay_button.dart';
import 'seat_selector.dart';
import 'time_selector.dart';

import '../../data/constants.dart';
import 'custom_app_bar.dart';
import 'date_selector.dart';
import 'location_text.dart';



class BookingScreen1 extends StatefulWidget {

  final String movieName;

  BookingScreen1({required this.movieName});

  @override
  _BookingScreen1State createState() => _BookingScreen1State();
}

class _BookingScreen1State extends State<BookingScreen1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: black,
      body: Padding(
        padding: EdgeInsets.only(top: MediaQuery.of(context).padding.top),
        child: Column(
          children: [
            //app bar
            CustomAppBar(widget.movieName),

            //date selector
            DateSelector(),

            //Time selector
            TimeSelector(),

            //Location and theatre
            LocationText(),

            //Seat selector
            SeatSelector(),

            //Pay button and seat categories
            PayButton(),
          ],
        ),
      ),
    );
  }
}
