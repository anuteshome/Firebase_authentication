import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';

class Authservices {

signWithGoogleMethod()async{
  //begin interactive sign in process
final GoogleSignInAccount?gUser=await GoogleSignIn().signIn();
// obtain auth detail from request
final GoogleSignInAuthentication ?gAuth=await gUser!.authentication;
// create new credintal for user
final credential = GoogleAuthProvider.credential(
accessToken: gAuth!.accessToken!,
idToken: gAuth.idToken!,
);
//finaly lets sign in
return await FirebaseAuth.instance.signInWithCredential(credential);

}
}