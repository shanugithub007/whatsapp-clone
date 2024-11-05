import 'package:firebase_auth/firebase_auth.dart';

class FireHelper {
  final FirebaseAuth auth = FirebaseAuth.instance;

  get user => auth.currentUser;
  Future<String?> signuP(
      {required String email, required String password}) async {
    try {
      await auth.createUserWithEmailAndPassword(
        email: email,
        password: password,
      );
      
      print(auth.currentUser?.uid);
      
      return null;
    } on FirebaseAuthException catch (e) {
      return e.message;
    }
  }
  Future<String?> signin(
      {required String email, required String password}) async {
    try {
      await auth.signInWithEmailAndPassword(email: email, password: password);

      print(auth.currentUser?.uid);
      var FirebaseFirestore;
      final user = await FirebaseFirestore.instance
          .collection('users')
          //.where('fcmToken', isEqualTo: fcmToken)
          .where('uniqueid', isEqualTo: auth.currentUser?.uid)
          .get();
      if (user.docs.isNotEmpty) {
        var userData = user.docs.first.data();
        print(userData["profilePic"]);
        print(userData["name"]);
        print(user.docs.first.id);
      } else {
        // No document found
      }

      return null;
    } on FirebaseAuthException catch (e) {
      return e.message;
    }
  }
}