import 'package:firebase_auth/firebase_auth.dart';
import 'package:fluth/component/Button.dart';
import 'package:fluth/component/SquerTile.dart';
import 'package:fluth/component/TextFiled.dart';
import 'package:flutter/material.dart';


class Signup extends StatefulWidget {
  final Function()? onTap;

   Signup({super.key, required this.onTap});

  @override
  State<Signup> createState() => _HomepageState();
}

class _HomepageState extends State<Signup> {


final emailController=TextEditingController();
final passwordController=TextEditingController();
final confirmPasswordController = TextEditingController();


void signUserup() async{
// showDialog(context: context, builder: (context){
//   return const Center(
//     child: CircularProgressIndicator(),
//   );
// });
if(confirmPasswordController.text.trim() == passwordController.text.trim()){
await FirebaseAuth.instance.createUserWithEmailAndPassword(
    email: emailController.text.trim(),
    password: passwordController.text.trim(),
    // confirm:ConfirmPasswordController.text.trim(),
  );
}else{
  print("Please enter same password for confimration");
}
      // Navigator.pop(context);
}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:Colors.grey[300],
      body:SafeArea(
        child:Center(
      child:SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
             const SizedBox(height: 50),
             const Icon(Icons.lock,size: 100),
             const SizedBox(height: 50,),
             Text("Let's Create an account",
             style:TextStyle(
              color: Colors.grey[700],
              fontSize: 16,
             )),
             const SizedBox(height: 25,),
           Textfiled(
            controller: emailController,
            hintText: "Username",
            obsecureText: false,
           ),
           const SizedBox(height: 25,),
           Textfiled(
            controller: passwordController,
            hintText: "Password",
            obsecureText: true,
           ),
            const SizedBox(height: 25,),
           Textfiled(
            controller: confirmPasswordController,
            hintText: "Confirm Password",
            obsecureText: true,
           ),
           const SizedBox(height: 25),
          
            const SizedBox(height: 25),
            MyButton(
              text:"Sign Up",
              onTap:signUserup),
            const SizedBox(height: 25,),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: Row(
                children: [
                  Expanded(child:
                   Divider(thickness: 0.5,color: Colors.grey[400],)),
                   Padding(
                     padding: const EdgeInsets.symmetric(horizontal: 10.0),
                     child: Text("Or continue with "),
                   ),
                     Expanded(child:
                   Divider(thickness: 0.5,color: Colors.grey[400],)),
                ],
              ),
            ),
             const SizedBox(height: 25,),
              // const SizedBox(height: 25,),
                   Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                      SquareTie(imagePath: 'lib/images/google.png'),
        const SizedBox(width: 10,),
                        SquareTie(imagePath: 'lib/images/apple.png')
                         ],),
        const SizedBox(height: 20,),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Already have an account",style: TextStyle(color: Colors.grey[700]),),
        const SizedBox(width: 5,),
            GestureDetector(
              onTap: widget.onTap,
              child: Text("Login now",
              style: TextStyle(color: Colors.blue,
              fontWeight: FontWeight.bold),
              ),
            )
          ],
        )
        
          ],
        ),
      )
      )
      )
    );
  }
}