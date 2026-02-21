import 'package:firebase_auth/firebase_auth.dart';
import 'package:fluth/Services/AuthServices.dart';
import 'package:fluth/component/Button.dart';
import 'package:fluth/component/SquerTile.dart';
import 'package:fluth/component/TextFiled.dart';
import 'package:flutter/material.dart';


class Homepage extends StatefulWidget {
  final Function()? onTap;

   Homepage({super.key,required this.onTap});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {


final emailController=TextEditingController();
final passwordController=TextEditingController();


void signUserIn() async{
// showDialog(context: context, builder: (context){
//   return const Center(
//     child: CircularProgressIndicator(),
//   );
// });
await FirebaseAuth.instance.signInWithEmailAndPassword(
    email: emailController.text.trim(),
    password: passwordController.text.trim(),
  );
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
             Text("Welcome back you are missed",
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
           const SizedBox(height: 25),
           Padding(
             padding: const EdgeInsets.symmetric(horizontal: 25.0),
             child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
               children: [
                 Text("Forget Password?",
                 style:TextStyle(color: Colors.grey[600],
                 fontSize: 14)),
                 const SizedBox(height: 25,),
               ],
             ),
           ),
            const SizedBox(height: 25),
            MyButton(
              text:"Sign in",
              onTap:signUserIn),
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
              const SizedBox(height: 25,),
                   Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                      SquareTie(
                          onTap: Authservices().signWithGoogleMethod(),
                        imagePath: 'lib/images/google.png'),
        const SizedBox(width: 10,),
                        SquareTie(
                          onTap:(){},
                          imagePath: 'lib/images/apple.png')
                         ],),
        const SizedBox(height: 50,),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Not a member?",style: TextStyle(color: Colors.grey[700]),),
        const SizedBox(width: 5,),
            GestureDetector(
              onTap: widget.onTap,
              child: Text("register now",
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