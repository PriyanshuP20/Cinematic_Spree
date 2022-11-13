
import 'package:flutter/material.dart';

class TicketData extends StatelessWidget {
  const TicketData({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              width: 150.0,
              height: 25.0,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30.0),
                border: Border.all(width: 1.0, color: Colors.green),
              ),
              child: const Center(
                child: Text(
                  'Carnival Cinemas',
                  style: TextStyle(color: Colors.green),
                ),
              ),
            ),
            // Row(
            //   children: const [
            //     Text(
            //       'LHR',
            //       style: TextStyle(
            //           color: Colors.black, fontWeight: FontWeight.bold),
            //     ),
            //     Padding(
            //       padding: EdgeInsets.only(left: 8.0),
            //       child: Icon(
            //         Icons.flight_takeoff,
            //         color: Colors.pink,
            //       ),
            //     ),
            //     Padding(
            //       padding: EdgeInsets.only(left: 8.0),
            //       child: Text(
            //         'ISL',
            //         style: TextStyle(
            //             color: Colors.black, fontWeight: FontWeight.bold),
            //       ),
            //     )
            //   ],
            // )
          ],
        ),
        const Padding(
          padding: EdgeInsets.only(top: 20.0),
          child: Text(
            'Movie Ticket',
            style: TextStyle(
                color: Colors.black,
                fontSize: 20.0,
                fontWeight: FontWeight.bold),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 25.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ticketDetailsWidget(
                  'Name', 'John Doe', 'Date', '25-11-2022'),
              Padding(
                padding: const EdgeInsets.only(top: 12.0, right: 52.0),
                child: ticketDetailsWidget('Screen', 'A', 'Class', '3D'),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 12.0, right: 53.0),
                child: ticketDetailsWidget('Class', '3D', 'Seat', '21B'),
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 40.0, left: 80.0, right: 80.0),
          child: Container(
            width: 150.0,
            height: 150.0,
            decoration: const BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('assets/images/qrcode.png'),
                    fit: BoxFit.cover)),
          ),
        ),

      ],
    );
  }
}

Widget ticketDetailsWidget(String firstTitle, String firstDesc,
    String secondTitle, String secondDesc) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      Padding(
        padding: const EdgeInsets.only(left: 12.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              firstTitle,
              style: const TextStyle(color: Colors.grey),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 4.0),
              child: Text(
                firstDesc,
                style: const TextStyle(color: Colors.black),
              ),
            )
          ],
        ),
      ),
      Padding(
        padding: const EdgeInsets.only(right: 20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              secondTitle,
              style: const TextStyle(color: Colors.grey),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 4.0),
              child: Text(
                secondDesc,
                style: const TextStyle(color: Colors.black),
              ),
            )
          ],
        ),
      )
    ],
  );
}