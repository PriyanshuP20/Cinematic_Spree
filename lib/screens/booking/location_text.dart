import 'package:flutter/material.dart';


import '../../data/constants.dart';

class LocationText extends StatelessWidget {
  const LocationText({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: appPadding),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Icon(Icons.location_on,color: white,size: 30,),
          const SizedBox(
            width: 8.0,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text('Carnival Cinemas',style: TextStyle(
                color: white,
                fontSize: 16.0,
                fontWeight: FontWeight.bold,
              ),),
              Text('Chauma, Mathua, India',style: TextStyle(
                color: white.withOpacity(0.5),
                fontSize: 16.0,
              ),),
            ],
          )
        ],
      ),
    );
  }
}
