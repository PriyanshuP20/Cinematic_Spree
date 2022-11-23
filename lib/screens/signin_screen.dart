import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:login/screens/signup_screen.dart';
import '../reusuable_widgets/header.dart';
import '../reusuable_widgets/reusuable_widgets.dart';
import '../utils/colours_utils.dart';
import 'home_screen.dart';

class SignInScreen extends StatefulWidget {
  const SignInScreen({Key? key}) : super(key: key);
  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  TextEditingController _emailTextController = TextEditingController();
  TextEditingController _passwordTextController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        decoration: BoxDecoration(
            gradient: LinearGradient(
          colors: [
            hexStringToColor("#923CB5"),
            hexStringToColor("#000000"),
          ],
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
        )),
        child: SingleChildScrollView(
            child: Column(children: <Widget>[
          HeaderLoginFive(),
          Padding(
            padding: EdgeInsets.fromLTRB(20, MediaQuery.of(context).size.height * 0, 20, 0),
            child: Column(
              children: <Widget>[
                logoWidget("assets/images/logo/logo-bg_removed.png"),
                Image.asset("assets/images/logo/text_logo_no_bg.png"),
                const SizedBox(height: 30),
                reusableTextField("Enter User Name", Icons.person_outline, false, _emailTextController),
                const SizedBox(height: 20),
                reusableTextField("Enter Password", Icons.lock_outline, true, _passwordTextController),
                const SizedBox(height: 20),
                firebaseUIButton(context, "Sign In", () async {
                  try {
                    await FirebaseAuth.instance
                        .signInWithEmailAndPassword(
                            email: _emailTextController.text,
                            password: _passwordTextController.text)
                        .then((value) {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => HomePage()));
                    });
                  } on FirebaseAuthException catch (e) { _showDialog1(context, e.code);
                  } }),
                signUpOption(),
              ],),),
        ])),),);
  }

              Future _showDialog1(BuildContext context, String a) {
                return showDialog<void>(
                  context: context,
                  builder: (BuildContext context) {
                    return AlertDialog(
                      title: Text('Alert'),
                      content: Text(a),
                      actions: <Widget>[
                        ElevatedButton(
                          child: Text('Ok'),
                          onPressed: () {
                            Navigator.pop(context);
                          },),],);},);
              }

  Row signUpOption() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Text("Don't have account?",
            style: TextStyle(color: Colors.white70)),
        GestureDetector(
          onTap: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => SignUpScreen()));
          },
          child: const Text(
            " Sign Up",
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
          ),
        ),
      ],
    );
  }
}
