// ignore_for_file: prefer_const_constructors

import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:babstrap_settings_screen/babstrap_settings_screen.dart';
import '../booking/custom_app_bar.dart';
import '../signin_screen.dart';
import 'about_us.dart';
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
          title: const Center(
            child:
                Image(image: AssetImage("assets/images/logo/text_logo_no_bg.png")),
          ),
          actions: const [
            Image(image: AssetImage("assets/images/logo/logo-bg_removed.png")),
          ],
        ),
        backgroundColor: Color.fromARGB(255, 75, 135, 225),
        body: SingleChildScrollView(
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
                userProfilePic: const AssetImage("assets/images/plogo2.png"),
                cardActionWidget: SettingsItem(
                  icons: Icons.edit,
                  iconStyle: IconStyle(
                    withBackground: true,
                    borderRadius: 50,
                    backgroundColor: Colors.yellow[600],
                  ),
                  title: "Modify",
                  subtitle: "Tap to change your data",
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => SettingsUI()),
                    );
                  },
                ),
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
                        MaterialPageRoute(builder: (context) => about()),
                      );
                    },
                    icons: Icons.info_rounded,
                    iconStyle: IconStyle(
                      backgroundColor: const Color.fromARGB(255, 217, 38, 101),
                    ),
                    title: 'About us',
                    subtitle: "Learn more about Cinematic Spree",
                  ),
                ],
              ),
            ),
            // You can add a settings title
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: SettingsGroup(
                settingsGroupTitle: "Account",
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
        )));
  }
}
