import 'package:fluth/component/Button.dart';
import 'package:fluth/component/SquerTile.dart';
import 'package:fluth/component/TextFiled.dart';
import 'package:flutter/material.dart';

class Homepage extends StatelessWidget {
   Homepage({super.key});
final UsernameController=TextEditingController();
final PasswordController=TextEditingController();

void SignUserin(){

}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:Colors.grey[300],
      body:SafeArea(
        child:Center(
      child:Column(
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
          controller: UsernameController,
          hintText: "Username",
          obsecureText: false,
         ),
         const SizedBox(height: 25,),
         Textfiled(
          controller: PasswordController,
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
          MyButton(onTap: SignUserin),
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
              SquareTie(imagePath: 'lib/images/google.png'),
const SizedBox(width: 10,),
                SquareTie(imagePath: 'lib/images/apple.png')
                 ],),
        ],
      )
      )
      )
    );
  }
}