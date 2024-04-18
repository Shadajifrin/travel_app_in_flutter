import 'package:flutter/material.dart';

class ForgotScreen extends StatelessWidget {
  const ForgotScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(children: [
      Container(
        height: double.infinity,
        width: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: NetworkImage(
                'https://tse2.mm.bing.net/th?id=OIP.rq08ETGuaGGqXZJxVGk7NwHaEK&pid=Api&P=0&h=180'),
            fit: BoxFit.cover,
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.only(top: 60.0, left: 20),
          child: Text(
            "Forgot\nPassword?",
            style: TextStyle(
                fontSize: 30, color: Colors.white, fontWeight: FontWeight.bold),
          ),
        ),
      ),
      Padding(
          padding: EdgeInsets.only(top: 200),
          child: Container(
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(40),
                      topRight: Radius.circular(40))),
              height: double.infinity,
              width: double.infinity,
              child: Padding(
                  padding: const EdgeInsets.only(left: 10, right: 10),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      TextFormField(
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
                      SizedBox(height: 30,),
                      Container(
                        height: 55,
                        width: 300,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30),
                            gradient: LinearGradient(colors: [
                              Color.fromARGB(255, 48, 2, 127),
                              Color.fromARGB(255, 95, 53, 167)
                            ])),
                        child: Center(
                          child: Text(
                            "SENT",
                            style: TextStyle(
                                fontSize: 20,
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Align(alignment: Alignment.center,
                      child: Text("Check your email we will sent a verification code!",style: TextStyle(
                            fontSize: 15,
                            color:Colors.grey,
                            fontWeight: FontWeight.normal),)),
                    ],
                  ))))
    ]));
  }
}
