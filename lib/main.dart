import 'package:flutter/material.dart';
//import 'package:travel_app_in_flutter/screens/login_screen.dart';
import 'package:travel_app_in_flutter/screens/verification.dart';
void main(){
  runApp(MyApp());
}
class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        brightness: Brightness.light,
      
      ),
       //  home:LoginScreen(),
       home: Verify(),
    );
  }

}