import 'package:flutter/material.dart';
import 'package:whatsapp_clone/auth/phone%20number.dart';

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        padding: EdgeInsets.only(left: 10,right: 10,top: 70,bottom: 100),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,

          children: [
            Center(
              child: Image.asset('assets/images/welcome-logo.jpg',
                width: MediaQuery.of(context).size.width*0.8,
              ),
            ),
            Column(
              children: [
                Text('Welcome to Whatsapp',
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 30
                  ),
                ),
                SizedBox(height: 10,),
                Container(
                  width: MediaQuery.of(context).size.width*0.8,
                  child: const    Text.rich(

                    TextSpan(
                        text: 'Read our ',

                        children: <InlineSpan>[
                          TextSpan(
                              text: 'Privacy Policy',

                              style: TextStyle(
                                color: Colors.blueAccent,

                              ),
                              children: <InlineSpan>[
                                TextSpan(
                                    text: '. Tap "Agree and continue to" to accept the ',
                                    style: TextStyle(
                                        color: Colors.black
                                    ),
                                    children: <InlineSpan>[
                                      TextSpan(
                                        text: 'Terms and Service',
                                        style: TextStyle(
                                            color: Colors.blueAccent
                                        ),
                                      )
                                    ]
                                ),

                              ]
                          )
                        ]
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),

              ],
            ),
            MaterialButton(
              onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=> PhoneNumber() ));
              },
              child: Container(
                width: MediaQuery.of(context).size.width*0.8,
                height: 60,
                decoration: BoxDecoration(
                  color: Color(0xFF128c7e),
                  borderRadius: BorderRadius.circular(10)
                ),
                child: Center(
                  child: Text('AGREE AND CONTINUE',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18
                    ),
                  ),
                ),
              ),

            )



          ],
        ),
      ),
    );
  }
}
