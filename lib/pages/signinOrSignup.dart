import 'package:fluth/pages/HomePage.dart';
import 'package:fluth/pages/signup.dart';
import 'package:flutter/material.dart';

class Signinorsignup extends StatefulWidget {
  const Signinorsignup({super.key});

  @override
  State<Signinorsignup> createState() => _SignupState();
}

class _SignupState extends State<Signinorsignup> {

  bool showLoginPage=true;

void toggleSign(){
 setState((){
showLoginPage=!showLoginPage;
 });
  
}

  @override
  Widget build(BuildContext context) {
      if(showLoginPage){
        return Homepage(onTap:toggleSign);
      }
      else{
        return Signup(onTap:toggleSign);
      }
    
  }
}