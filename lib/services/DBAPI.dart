import 'package:firebase_auth/firebase_auth.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class DBAPI extends ChangeNotifier {
  FirebaseAuth _auth = FirebaseAuth.instance;
  Firestore _store = Firestore.instance;


  Future getCurrentUser() async {
    var user = await getCurrentUser();
    notifyListeners();
    return user;
  }

  Future<FirebaseAuth> signInUser({String email, String password}) async {
    try {
      await _auth.signInWithEmailAndPassword(email: email, password: password);
    } catch (err) {
      print(err.toString());
    }
    notifyListeners();
  }

  Future createNewUSer({String email, String password}) async {
    try {
     await _auth.createUserWithEmailAndPassword(email: email, password: password);
//         .then((currentUser){
//       _store.collection('UserManagement').document(currentUser.uid).setData({
//         'uuid': currentUser.uid,
//         'email': email,
//       })email;
//     });
    } catch (err) {
      print(err.toString());
    }
    notifyListeners();
  }

  // UserDetails Management in Firestore,
  Future storeUser ({String email, String password}) async {
    try {
//      await _store.collection('UserManager').document(c.uid).setData({});
      await createNewUSer(email: email, password: password).then((currentUser) {
        _store.collection('UserManagement').document(currentUser.uid).setData({
         'uuid' : currentUser.uid,
         'email' : email,
        });
      });
    }
    catch (err) {
      print(err.toString());
    }
  }

  Future signOutUser () async {
    await _auth.signOut();
    notifyListeners();
  }
}
