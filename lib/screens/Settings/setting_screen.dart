// ignore_for_file: prefer_const_constructors

import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:babstrap_settings_screen/babstrap_settings_screen.dart';
import 'package:login/screens/home/Privacy_policy.dart';
import 'package:login/utils/colours_utils.dart';
import '../booking/custom_app_bar.dart';
import '../signin_screen.dart';
import 'about_us.dart';
import 'contact_us.dart';
import 'edit_profile.dart';

class SettingScreen extends StatelessWidget {
  const SettingScreen({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(

        appBar: AppBar(
          backgroundColor: Color.fromARGB(255, 75, 135, 225),
          leading: new IconButton(
              icon: new Icon(
                Icons.arrow_back,
                color: Color.fromARGB(255, 23, 225, 9),
                size: 35,
              ),
              onPressed: () {
                Navigator.pop(context);
              }),
          title: const Center(
            child:
                Image(image: AssetImage("assets/images/logo/text_logo_no_bg.png")),
          ),
          actions: const [
            Image(image: AssetImage("assets/images/logo/logo-bg_removed.png")),
          ],
        ),
        
      body:Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        decoration:BoxDecoration(
          
          gradient :LinearGradient(
            colors: [
              hexStringToColor("#923CB5"),
            hexStringToColor("#000000"),
            
            
            //    Color(0xFFfea4a97),
            //  Color(0xFFe17763 ),
             ],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter
             
          )
        ),
        child: SingleChildScrollView(
          
            
            child: Column(
              children: [

               SizedBox(
                height: 10,
            ),

            Padding(
              padding: const EdgeInsets.all(8.0),
              child: BigUserCard(
                cardColor: Color.fromARGB(255, 58, 19, 232),
                userName: "Name",
                userProfilePic: const AssetImage("assets/images/logo/logo-bg_removed.png"),
                // cardActionWidget: SettingsItem(
                //   icons: Icons.edit,
                //   iconStyle: IconStyle(
                //     withBackground: true,
                //     borderRadius: 50,
                //     backgroundColor: Colors.yellow[600],
                //   ),
                //   title: "Modify",
                //   subtitle: "Tap to change your data",
                //   onTap: () {
                //     Navigator.push(
                //       context,
                //       MaterialPageRoute(builder: (context) => SettingsUI()),
                //     );
                //   },
                // ),
              ),
            ),

            Padding(
              padding: const EdgeInsets.all(8.0),
              child: SettingsGroup(
                items: [
                  SettingsItem(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => AboutUs()),
                      );
                    },
                    icons: Icons.info_rounded,
                    iconStyle: IconStyle(
                      backgroundColor: Color.fromARGB(255, 38, 71, 217)                 ),
                    title: 'About us',
                    subtitle: "Learn more about Cinematic Spree",
                  ),
                ],
              ),
            ),
             Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: SettingsGroup(
                    items: [
                      SettingsItem(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => ReturnPolicy()),
                          );
                        },
                        icons: Icons.lock_outline_rounded,
                        iconStyle: IconStyle(
                            backgroundColor: Color.fromARGB(255, 223, 10, 10)                 ),
                        title: 'Privacy Policy',
                        
                      ),
                    ],
                  ),
                ),


                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: SettingsGroup(
                    items: [
                      SettingsItem(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => contact()),
                          );
                        },
                        icons: Icons.mail_rounded,
                        iconStyle: IconStyle(
                            backgroundColor: Color.fromARGB(255, 218, 224, 25)                 ),
                        title: 'Contact Us',
                        subtitle: "Get in touch to know more.",
                      ),
                    ],
                  ),
                ),
                // You can add a settings title
                SizedBox(
                  height: 30,
                ),
            SizedBox(
              child: Text(
                "Account",
                style: TextStyle(
                color: Colors.white, fontSize: 25, fontWeight: FontWeight.w900
              )
              ),
            ),
            
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: SettingsGroup(
                settingsGroupTitle: "",
                items: [
                  SettingsItem(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) =>
                                const SignInScreen()), ///////////
                      );
                    },
                    icons: Icons.exit_to_app_rounded,
                    title: "Sign In/Sign Up",
                  ),
                ],


              ),
            ),


           

          ],
        ))
        ),

      );
  //
  }
}
