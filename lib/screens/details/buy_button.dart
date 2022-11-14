import 'package:flutter/material.dart';


import '../../data/constants.dart';

import '../booking/booking_srcn.dart';

class BuyButton extends StatefulWidget {
  final String movieName;

  BuyButton(this.movieName);

  @override
  _BuyButtonState createState() => _BuyButtonState();
}

class _BuyButtonState extends State<BuyButton> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Positioned(
      bottom: 0,
      child: Container(
        width: size.width * 0.9,
        height: size.height * 0.08,
        margin: EdgeInsets.symmetric(vertical: size.width * 0.05),
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
              primary: Colors.purple,
              padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 20),
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12.0)),
              textStyle: const TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold)),

          onPressed: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) =>
                      const BookingScreen(),
                ));
          },
          child: const Text(
            'Buy Ticket',

            style: TextStyle(

                color: white, fontWeight: FontWeight.bold, fontSize: 18.0),
          ),
        ),
      ),
    );
  }
}
