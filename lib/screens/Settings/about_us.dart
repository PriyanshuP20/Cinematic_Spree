
import 'package:flutter/material.dart';
import 'package:login/screens/Settings/setting_screen.dart';
import '../../utils/colours_utils.dart';

class AboutUs extends StatefulWidget {
  const AboutUs({Key? key}) : super(key: key);

  @override
  State<AboutUs> createState() => _AboutUsState();
}

class _AboutUsState extends State<AboutUs> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Scaffold(
            appBar: AppBar(
              backgroundColor: Color.fromRGBO(82, 173, 100, 0.5),
              automaticallyImplyLeading: false,
              title: const Center(child: Text('About Us')),
              leading: new IconButton(
                  icon: new Icon(
                    Icons.arrow_back,
                    color: Color.fromARGB(255, 23, 225, 9),
                    size: 35,
                  ),
                  onPressed: () {
                    Navigator.pop(context);
                  }),
            ),
            body: Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height,
                decoration: BoxDecoration(
                    gradient: LinearGradient(
                  colors: [
                    Colors.white70,
                    hexStringToColor("#923CB5"),
                    hexStringToColor("#000000"),
                  ],
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                )),
                child: Padding(
                    padding: const EdgeInsets.all(10),
                    child: Column(
                      children: [
                        SizedBox(
                          width: 200,
                          height: 200,
                          child: Image.asset(
                              "assets/images/logo/logo-bg_removed.png"),
                        ),
                        SizedBox(height: 30,),
                        Text('About Cinematic Spree',),
                        Text('Version 1.0.0.0',),
                        Text('Us : Team Cinematic Spree',),
                        SizedBox(height: 20,),
                        Container(
                          width: MediaQuery.of(context).size.width * 0.9,
                          height: MediaQuery.of(context).size.height / 2,
                          decoration: BoxDecoration(
                              color: Colors.white54,
                              border: Border.all(
                                  color: Colors.purpleAccent, width: 2)),
                          child: Padding(
                              padding: const EdgeInsets.all(10),
                              child: Column(
                                children: [
                                Text(
                                  "At Cinematic Spree, our aim is to offer you seamless movie ticket booking experience.",
                                style: TextStyle( fontSize: 15, fontFamily: 'Courier',
                                  fontWeight: FontWeight.w900, color: Colors.black87,
                                ),
                                textAlign: TextAlign.justify,
                                     textScaleFactor: 1.5,
                                ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Text(
                                      "This project aims to develop a back-end application for a movie ticket booking app using a graphical user interface. It allows for a flexible and user-friendly ticket booking interface. ",
                                      style: TextStyle(
                                      fontSize: 20, fontWeight: FontWeight.w500,
                                        fontFamily: 'Courier', color: Colors.black,
                                    ),
                                    textAlign: TextAlign.justify,
                                    textScaleFactor: 1,
                                  ),])),)],
                    )))));
  }
}
