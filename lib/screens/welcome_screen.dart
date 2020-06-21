import 'package:flutter/material.dart';
import 'package:textlytic/screens/login_screen.dart';
import 'package:textlytic/screens/registration_screen.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:textlytic/components/rounded_button.dart';

class WelcomeScreen extends StatefulWidget {
   static const String id = 'welcome_screen';
  @override
  _WelcomeScreenState createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> with  SingleTickerProviderStateMixin{

  AnimationController controller;


  @override
  void initState(){
    super.initState();

    controller = AnimationController(
      duration: Duration(seconds: 1),
      vsync: this,
      upperBound: 100.0,
    );

    controller.forward();
    
    controller.addListener(() {
    setState(() {

    });

    });
  }
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 24.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Row(
              children: <Widget>[
                Hero(
                   tag: 'logo',
                child: Container(
                  child: Image.asset('images/logo.png'),
                  height: 60.0,
                ),
                ),
                TypewriterAnimatedTextKit(
                  duration: Duration(milliseconds: 2000),

                  text: ['Textlytic'],
                  textStyle: TextStyle(
                    fontSize: 45.0,
                    fontWeight: FontWeight.w900,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 48.0,
            ),
            RoundedButton(
              title: 'Log In',
              color: Colors.lightBlueAccent,
              onPressed: () {
                Navigator.pushNamed(context, LoginScreen.id);

              }),
            RoundedButton(
              title: 'Register',
            color: Colors.lightBlueAccent,
            onPressed: () {
              Navigator.pushNamed(context, RegistrationScreen.id);

            }),
          ],
        ),
      ),
    );
  }
}


