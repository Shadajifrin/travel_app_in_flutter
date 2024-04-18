import 'package:flutter/material.dart';
import 'package:travel_app_in_flutter/screens/forgot_screen.dart';
import 'package:travel_app_in_flutter/screens/signup.dart';

class LoginScreen extends StatefulWidget {
  LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
 var formkey = GlobalKey<FormState>();
  var pas_visibility = true;
  String email = "admin@email.com";
  String password = "123456";
  var emailcontroller = TextEditingController();
  var pascontroller = TextEditingController();
@override
void dispose(){
    emailcontroller.dispose();
    pascontroller.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: [
        Container(
          height: double.infinity,
          width: double.infinity,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: NetworkImage('https://tse2.mm.bing.net/th?id=OIP.rq08ETGuaGGqXZJxVGk7NwHaEK&pid=Api&P=0&h=180'),
              fit: BoxFit.cover,
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.only(top: 60.0, left: 20),
            child: Text(
              "Hello\nLogin!",
              style: TextStyle(
                  fontSize: 30,
                  color: Colors.white,
                  fontWeight: FontWeight.bold),
            ),
          ),
        ),
        Padding(
          padding:  EdgeInsets.only(top: 200),
          child: Container(
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(40),
                    topRight: Radius.circular(40))),
            height: double.infinity,
            width: double.infinity,
            child: Padding(
              padding: const EdgeInsets.only(left: 10,right: 10),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  TextFormField(
                    controller: emailcontroller,
                      validator: (email) {
                        if (email!.isEmpty) {
                          return "email is required";
                        } else if (email.contains('@') ) {
                          return "email must be valid";
                        } else {
                          return null;
                        }
                      },
                    decoration: const InputDecoration(
                      suffixIcon: Icon(Icons.email_outlined),
                        label: Text(
                      "Email",
                      style: TextStyle(
                          fontSize: 18,
                          color: Color.fromARGB(255, 48, 2, 127),
                          fontWeight: FontWeight.bold),
                    )),
                  ),
                  TextFormField(
                    controller: pascontroller,
                      obscureText: pas_visibility,
                      obscuringCharacter: '*',
                      validator: (password) {
                        if (password!.isEmpty || password.length < 6) {
                          return "password is empty or check length ";
                        } else {
                          return null;
                        }
                      },
                     decoration:  InputDecoration(
                      suffixIcon: IconButton(
                              onPressed: () {
                                setState(() {
                                  if (pas_visibility == true) {
                                    pas_visibility = false;
                                  } else {
                                    pas_visibility = true;
                                  }
                                });
                              },
                              icon: Icon(pas_visibility == true
                                  ? Icons.visibility_off
                                  : Icons.visibility)),
                        label: Text(
                      "Password",
                      style: TextStyle(
                          fontSize: 18,
                          color: Color.fromARGB(255, 48, 2, 127),
                          fontWeight: FontWeight.bold),
                    )),
                  ),
                  SizedBox(height: 20,),
                 GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => ForgotScreen(),
                          ),
                        );
                      },
                      child: Align(
                        alignment: Alignment.centerRight,
                        child: Text(
                          "Forgot Password?",
                          style: TextStyle(
                              fontSize: 18,
                              color: Color.fromARGB(255, 48, 2, 127),
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                  SizedBox(height: 70,),
                  Container(
                    height: 55,
                    width: 300,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      gradient: LinearGradient(colors: [
                       Color.fromARGB(255, 48, 2, 127),
                        Color.fromARGB(255, 95, 53, 167)
                    ])),
                    child: Center(child: Text("LOGIN",style: TextStyle(
                          fontSize: 20,
                          color: Colors.white,
                          fontWeight: FontWeight.bold),),),
                  ),
                  SizedBox(height: 10,),
                  Padding(
                    padding: const EdgeInsets.only(left: 82),
                    child: Align(alignment: Alignment.center,
                    child: Row(children: [
                      Text("Don't have account?",style: TextStyle(
                            fontSize: 15,
                            color:Colors.grey,
                            fontWeight: FontWeight.normal),),
                      TextButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => SignUp()));
                      },
                      child: const Text("SignUp",  style: TextStyle(
                                fontSize: 15,
                                color:Color.fromARGB(255, 48, 2, 127) ,
                                fontWeight: FontWeight.normal),)),
                    ],),),
                  )
                ],
              ),
            ),
          ),
        ),

      ],
    ));
  }
}
