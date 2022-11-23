import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

import '../../utils/colours_utils.dart';

class ReturnPolicy extends StatefulWidget {
  const ReturnPolicy({super.key});

  @override
  State<ReturnPolicy> createState() => _ReturnPolicyState();
}

class _ReturnPolicyState extends State<ReturnPolicy> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Scaffold(
            appBar: AppBar(
              backgroundColor: Color.fromRGBO(82, 173, 100, 0.5),
              automaticallyImplyLeading: false,
              title: const Center(child: Text('Policy Privacy')),
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
                        SizedBox(
                          height: 30,
                        ),
                        Text(
                          'About Cinematic Spree',
                        ),
                        Text(
                          'Version 1.0.0.0',
                        ),
                        Text(
                          'Us : Team Cinematic Spree',
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Container(
                          width: MediaQuery.of(context).size.width * 0.9,
                          height: MediaQuery.of(context).size.height / 2.5,
                          decoration: BoxDecoration(
                              color: Colors.white54,
                              border: Border.all(
                                  color: Colors.purpleAccent, width: 2)),
                          child: Padding(
                              padding: const EdgeInsets.all(10),
                              child: SingleChildScrollView(
                                child: 
                              Column(

                                children: [

                                Text(
                                  "Privacy Policy",
                                style: TextStyle(
                                  fontSize: 15,
                                  fontFamily: 'Courier',
                                  fontWeight: FontWeight.w900,
                                  color: Colors.black87,
                                ),
                                textAlign: TextAlign.justify,

                                     textScaleFactor: 1.5,
                                ),
                                  SizedBox(
                                    height: 15,
                                  )
                                  ,
                                
                                  Text(
                                    "Cinematic Spree built the Cinematic Spree app as an Open Source app. This SERVICE "
                                      "is provided by Cinematic Spree at no cost and is intended for use as is."
                                   
                                   "This page is used to inform visitors regarding our policies with the collection, use, "
                                   "and disclosure of Personal Information if anyone decided to use our Service."
                                  "If you choose to use our Service, then you agree to the collection and use of information in relation to this policy"
                                  "The Personal Information that we collect is used for providing and improving the Service.",
                                      style: TextStyle(
                                      fontSize: 18,
                                        fontWeight: FontWeight.w500,
                                        fontFamily: 'Courier',
                                      color: Colors.black,
                                    ),
                                    textAlign: TextAlign.justify,

                                    textScaleFactor: 1,
                                  ),



                                    ]))),
                        )
                      ],
                    )))));
  }
}