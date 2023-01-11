import 'package:another_flutter_splash_screen/another_flutter_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:whatsapp_clone/auth/welcome.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FlutterSplashScreen.fadeIn(
        backgroundColor: Colors.white,
        duration:  Duration(seconds: 2),
        animationCurve: Curves.bounceInOut,
        defaultNextScreen: WelcomeScreen(),
        childWidget: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          child:Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            child: Stack(

              children: [

                Positioned(
                  top: MediaQuery.of(context).size.height*0.4,
                  left: MediaQuery.of(context).size.width*0.4,
                  child: Image.asset('assets/images/whatsapp-logo.png',
                    width: 100,
                    height: 100,
                  ),
                ),

                SizedBox(
                  height: 50,
                ),
                Positioned(
                  top: MediaQuery.of(context).size.height*0.85,
                  left: MediaQuery.of(context).size.width*0.40,
                  child: Container(
                    height: 50,
                    width: 100,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('from'),
                        Row(
                          children: [
                            Image.asset('assets/images/meta-logo.jpg',
                              width: 30,
                              height: 30,

                            ),
                            Text(' Meta',
                              style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.w500,
                                  color: Color(0xFF128c7e)

                              ),
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                ),

              ],
            ),
          ),
        ),

      ),
    );
  }
}
