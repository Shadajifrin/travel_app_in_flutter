import 'package:flutter/material.dart';
import 'package:travel_app_in_flutter/screens/login_screen.dart';

class SignUp extends StatefulWidget {
  SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  TextEditingController passcontroller = TextEditingController();

  var formkey = GlobalKey<FormState>();
  var cnfm_visibility = true;
  var pas_visibility = true;

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
              "Create Your\nAccount!",
              style: TextStyle(
                  fontSize: 30,
                  color: Colors.white,
                  fontWeight: FontWeight.bold),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 200.0),
          child: Container(
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(40), topRight: Radius.circular(40)),
              color: Colors.white,
            ),
            height: double.infinity,
            width: double.infinity,
            child: Padding(
              padding: const EdgeInsets.only(left: 18.0, right: 18),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  TextFormField(
                    decoration: InputDecoration(
                        suffixIcon: Icon(
                          Icons.person,
                          
                        ),
                        label: Text(
                          'Full Name',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Color.fromARGB(255, 48, 2, 127),
                          ),
                        )),
                  ),
                  TextFormField(
                    validator: (email) {
                      if (email!.isEmpty || !email.contains('@')) {
                        return "Email must be valid ";
                      } else {
                        return null;
                      }
                    },
                    decoration: InputDecoration(
                        suffixIcon: Icon(
                          Icons.email_outlined,
                         
                        ),
                        label: Text(
                          'Email',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Color.fromARGB(255, 48, 2, 127),
                          ),
                        )),
                  ),
                  TextFormField(
                    controller: passcontroller,
                    obscureText: pas_visibility,
                    obscuringCharacter: '*',
                    validator: (password) {
                      if (password!.isEmpty) {
                        return "Password is required";
                      } else if (password.length < 6) {
                        return "Password must be at least 6 characters long";
                      } else {
                        return null;
                      }
                    },
                    decoration: InputDecoration(
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
                            icon: Icon(
                                pas_visibility == true
                                    ? Icons.visibility_off
                                    : Icons.visibility,
                                )),
                        label: Text(
                          'Password',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Color.fromARGB(255, 48, 2, 127),
                          ),
                        )),
                  ),
                  TextFormField(
                    obscureText: cnfm_visibility,
                    obscuringCharacter: '*',
                    validator: (confirmpassword) {
                      if (confirmpassword!.isEmpty ||
                          confirmpassword != passcontroller.text) {
                        return "password mismatch";
                      } else {
                        return null;
                      }
                    },
                    decoration: InputDecoration(
                        suffixIcon: IconButton(onPressed: (){
                          setState(() {
                            if(cnfm_visibility==true){
                              cnfm_visibility=false;
                            }
                            else{
                              cnfm_visibility=true;
                            }
                          });
                        }, icon:Icon(cnfm_visibility==true?Icons.visibility_off:Icons.visibility,  )),
                        label: Text(
                          'Conform Password',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Color.fromARGB(255, 48, 2, 127),
                          ),
                        )),
                  ),
                  const SizedBox(
                    height: 40,
                  ),
                  
                  Container(
                    height: 55,
                    width: 300,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      gradient: const LinearGradient(colors: [
                        Color.fromARGB(255, 48, 2, 127),
                        Color.fromARGB(255, 95, 53, 167)
                      ]),
                    ),
                    child: const Center(
                      child: Text(
                        'SIGN IN',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                            color: Colors.white),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 90),
                    child: Align(
                      alignment: Alignment.center,
                      child: Row(
                        children: [
                          Text(
                            "Already have account?",
                            style: TextStyle(
                                fontSize: 15,
                                color: Colors.grey,
                                fontWeight: FontWeight.normal),
                          ),
                          TextButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => LoginScreen()));
                      },
                      child: const Text("Login",  style: TextStyle(
                                fontSize: 15,
                                color: Color.fromARGB(255, 48, 2, 127),
                                fontWeight: FontWeight.normal),)),
                        ],
                      ),
                    ),
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
