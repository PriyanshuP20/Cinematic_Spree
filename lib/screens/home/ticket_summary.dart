
import 'package:flutter/material.dart';
import 'package:babstrap_settings_screen/babstrap_settings_screen.dart';
import 'package:login/screens/home/ticket_data.dart';
import '../signin_screen.dart';
import 'package:ticket_widget/ticket_widget.dart';


class TicketSummaryScreen extends StatelessWidget {
  const TicketSummaryScreen({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold( appBar: AppBar(backgroundColor: Color.fromARGB(255, 75, 135, 225),
      title: const Center(
        child:Image(image: AssetImage("assets/images/logo/text_logo_no_bg.png")),

      ),

      actions: const [
        Image(image: AssetImage("assets/images/logo/logo-bg_removed.png")),

      ],
    ),
        backgroundColor: Color.fromARGB(255, 75, 135, 225),
        body: SingleChildScrollView(
            child: Column(
              children: [ SizedBox(height: 10,),

                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: BigUserCard(
                    cardColor:  Color.fromARGB(255, 58, 19, 232),
                    userName: "Name",
                    userProfilePic:
                    const AssetImage("assets/images/plogo2.png"),
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
                    //
                    //   },
                    // ),
                  ),
                ),

                const Padding(
                  padding: EdgeInsets.all(8.0),
                ),
                const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: TicketWidget(
                    width: 350,
                    height: 500,
                    isCornerRounded: true,
                    padding: EdgeInsets.all(20),
                    child: TicketData(),
                  ),
                ),
              ],
            )));
  }
}
