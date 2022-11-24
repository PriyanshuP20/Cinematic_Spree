// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, sized_box_for_whitespace, unnecessary_new

import 'package:flutter/material.dart';
import 'package:contactus/contactus.dart';
import 'package:login/screens/Settings/setting_screen.dart';

import '../../utils/colours_utils.dart';



class contact extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Scaffold(
          appBar: AppBar(backgroundColor: Color.fromRGBO(82, 173, 100, 0.5),
            automaticallyImplyLeading: false,
            leading: new IconButton(
                icon: new Icon(Icons.arrow_back, color: Color.fromARGB(255, 23, 225, 9),size: 35,),
                onPressed: () {
                  Navigator.pop(context);
                }),
          ),
          body:Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    // hexStringToColor("04619F"),
                    Colors.white70,
                    hexStringToColor("#923CB5"),
                    hexStringToColor("#000000"),
                  ],
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                )),
            child: Padding(
              padding: const EdgeInsets.all(10),
              child: ContactUs(
                textColor: Color.fromARGB(255, 236, 32, 5),
                companyColor: Color.fromARGB(255, 0, 98, 255),
                taglineColor: Color.fromARGB(229, 215, 4, 4),
                cardColor: Color.fromARGB(255, 92, 245, 109),

                logo: AssetImage("assets/images/logo-bg_removed.png",),
                email: 'sharjilali377@gmail.com',
                companyName: 'Cinematic Spree',
                phoneNumber: '+918957438091',
                dividerThickness: 2,
                githubUserName: 'sharjil-ali37',
                linkedinURL: 'https://www.linkedin.com',
                tagLine: 'Movie ticket booking App',
              ),
            ),
          )
      ),
    );
  }
}
