import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../data/constants.dart';

class CustomAppBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Align(
      alignment: Alignment.topCenter,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: appPadding * 2.5),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Container(
              height: size.height * 0.075,
              width: size.width * 0.15,
              child: Image.asset('assets/images/logo/logo-bg_removed.png'),
            ),

            Container(
              height: size.height * 0.078,
              width: size.width * 0.64,
              // decoration: BoxDecoration(
              //     border: Border.all(color: white.withOpacity(0.35)),
              //     borderRadius: BorderRadius.circular(20.0)),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: appPadding / 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                      Image.asset('assets/images/logo/text_logo_no_bg.png'),

                  ],
                ),
              ),
            ),
            Container(
              height: size.height * 0.075,
              width: size.width * 0.15,
              decoration: BoxDecoration(
                  border: Border.all(
                    color: white.withOpacity(0.35),
                  ),
                  borderRadius: BorderRadius.circular(20.0)),
              child: const Icon(
                Icons.settings_applications_outlined,
                color: white,
                size: 50.0,
              ),
            ),

          ],
        ),
      ),
    );
  }
}
