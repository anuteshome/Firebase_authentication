import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class HelloPage extends StatelessWidget {
final user=FirebaseAuth.instance.currentUser!;

   HelloPage({super.key});
void signoutfunc(){
  FirebaseAuth.instance.signOut();
}
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(onPressed: signoutfunc, icon: Icon(Icons.logout))
        ],
      ),
      body: Center(
        child: Text("Welcome Dear! "+ user.email!),

      ),
    );
  }
}