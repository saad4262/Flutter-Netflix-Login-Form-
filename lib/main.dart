import 'dart:ffi';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
// import 'package:flutter/material.dart';

void main() {
  runApp(App2());
}
class CheckboxScreen extends StatefulWidget {
  const CheckboxScreen({super.key});

  @override
  _CheckBoxScreen createState() => _CheckBoxScreen();
}
class _CheckBoxScreen extends State<CheckboxScreen> {
  bool selected = false;

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.all(10),
        child: Container(
            // width: double.infinity,
            // height: double.infinity,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Transform.scale(
                  scale: 1.8,
                  child: Checkbox(value: selected,
                    onChanged: (value){
                      setState(() {
                        selected = value!;
                      });
                    },
                    activeColor: Colors.red,
                    // overlayColor: MaterialStateProperty.all(Colors.red),
                    checkColor: Colors.black,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(5))
                    ),

                  ),
                ),
                // SizedBox(height: 10,),
                // CheckboxListTile(value: selected, onChanged: (value){
                //   setState(() {
                //     selected = value!;
                //   });
                // },
                //   title: const Text("Check box title"),
                // )
              ],
            )
        ));
  }
}






class App2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "App2",
      debugShowCheckedModeBanner: false,
      theme: ThemeData(

          primarySwatch: Colors.yellow
          ),
      home: Dashboard(),
    );
  }
}

class Dashboard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: Text("Dashboard"),
      //   backgroundColor: Colors.red,
      //   actions: [
      //     IconButton(
      //       icon: Icon(Icons.notifications),
      //       onPressed: () {
      //         // Add action for the icon button here
      //       },
      //     ),
      //   ],// Change this to your desired color
      // ),

      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/images/bg.jpg"),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  Colors.black.withOpacity(0.9),
                  Colors.black.withOpacity(0.7)
                ],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
              ),
            ),
          ),
          Padding(
            padding:
                EdgeInsets.only(left: 20.0), // Adjust left padding as needed

            child: Row(
              // mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  "assets/images/logo.png",
                  width: 130, // Adjust the width as needed
                  height: 130, // Adjust the height as needed
                ),
                Spacer(), // Spacer to evenly distribute space
                // Add some space between the logo and the text
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      Text(
                        "Privacy",
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                      SizedBox(
                          width: 10), // Add space between Privacy and Signin

                      Text(
                        "Signup",
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                      Icon(Icons.more_vert ,
                      color: Colors.white,),
                    ],
                  ),
                )
              ],
            ),
          ),


          Padding(
            padding: const EdgeInsets.only(top:200.0),
            child: SingleChildScrollView(

            child: Center(
                child: Center(

                  child: Column(
                    // crossAxisAlignment: center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("Sign in",style: TextStyle(color: Colors.white,fontSize: 28,fontWeight: FontWeight.bold),),
                      Container(height: 20,),
                      Container(
                        width: 300,
                         height: 70,
                         child: TextField(
                           style: TextStyle(
                             color: Colors.white, // Set your desired text color here
                           ),
                           decoration: InputDecoration(
                               hintText: 'Enter Email',
                               hintStyle: TextStyle(
                                 color: Colors.grey, // Set hint text color here
                               ),
                               suffixIcon: Icon(Icons.email), // Icon at the end of the TextField

                             border: OutlineInputBorder(
                               borderRadius: BorderRadius.circular(8),
                               borderSide: BorderSide(

                                 color: Colors.red,
                                 width: 2,
                               )

                             )
                           ),

                         ),

                      ),
                      Container(
                        height: 20,
                      ),
                      Container(
                        width: 300,
                        height: 70,
                        child: TextField(
                          style: TextStyle(
                            color: Colors.white, // Set your desired text color here
                          ),
                          decoration: InputDecoration(
                              hintText: 'Enter Password',
                              hintStyle: TextStyle(
                                color: Colors.grey, // Set hint text color here

                              ),
                              suffixIcon: Icon(Icons.visibility_outlined), // Icon at the end of the TextField

                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(8),
                                  borderSide: BorderSide(
                                    color: Colors.red,
                                    width: 2,
                                  )

                              )
                          ),
                          obscureText: true, // Hide text for password field

                        ),

                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right:45),
                        child: Container(
                            alignment: Alignment.centerRight,

                            child: Text("Forget?",style: TextStyle(color: Colors.grey),)),
                      ),
                      Container(
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.red, // background
                          foregroundColor: Colors.white, // foreground
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8), // Border radius
                            side: BorderSide(
                              color: Colors.red, // Border color
                              width: 2, // Border width
                            ),
                          ),

                        ),
                        onPressed: () { },
                        child: Text('Sign in',),
                      ),
                    ),
                      Container(
                      height: 20,
                      ),


                      Row(
                        children: [
                          CheckboxScreen(),
                          Text("Remember Me",style: TextStyle(color: Colors.white),),
                          Spacer(), // Spacer to evenly distribute space
                          Padding(

                            padding: const EdgeInsets.only(right:12),
                            child: Text("Need Help?",style: TextStyle(color: Colors.grey),),
                          ),


                        ],
                      ),
                      // Add the CheckBoxScreen here
                      Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: Center(child: Text("This page is protected by Google reCAPTCHA to ensure you're not a bot. Learn more.",style: TextStyle(color: Colors.grey),)),
                      )

                    ],
                ),


              ),
              ),
            ),
          )],

      ),
    );
  }
}



