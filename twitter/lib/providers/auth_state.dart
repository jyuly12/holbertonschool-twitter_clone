import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart' as firebase;
import 'package:flutter/material.dart';
import 'package:twitter/models/user.dart';
import 'package:twitter/widgets/showSnackbar.dart';

enum Errors {none, matchError, weakError, existsError, error, wrongError, noUserError}

class Auth extends ChangeNotifier {

  final auth = firebase.FirebaseAuth.instance;

  final usersRef = FirebaseFirestore.instance
    .collection('users')
    .withConverter<User>(
      fromFirestore: (snapshot, _) {
      return User.fromJson(
        snapshot.data() ?? {},
      );
    },
    toFirestore: (user, _) => user.toJson(),
  );

  Future attemptSignUp({
    required String email,
    required String name,
    required String password,
    required String passwordConfirmation,
  }) async {
    if (password != passwordConfirmation) {
      return Errors.matchError;
    }
    try {
      firebase.UserCredential userCredential = await auth.createUserWithEmailAndPassword(
        email: email,
        password: password,
      );
  
    return FirebaseFirestore.instance.collection('users').add({
        'key': '',
        'userID': userCredential.user?.uid,
        'email': email,
        'userName': '@${name}',
        'displayName': name,
        'imageUrl': '',
        'followers': 0,
        'following': 0,
      })
         .then((value) => Errors.none)
         .catchError((error) => Errors.error);
    } on firebase.FirebaseAuthException catch (e) {
      if (e.code == 'weak-password') {
        return Errors.weakError;
      } else if (e.code == 'email-already-in-use') {
        return Errors.existsError;
      } else {
        return Errors.error;
      }
    }
  }

  Future attemptLogin({
      required String email,
      required String password,
  }) async {
    try {
      await auth.signInWithEmailAndPassword(
        email: email,
        password: password,
      );
      return Errors.none;
    } on firebase.FirebaseAuthException catch (e) {
      if (e.code == 'user-not-found') {
        return Errors.noUserError;
      } else if (e.code == 'wrong-password') {
        return Errors.wrongError;
      } else {
        return Errors.error;
      }
    }
  }

  Future logout() async {
    await auth.signOut();
  }

  Future<User> getCurrentUserModel() async {
    QuerySnapshot querySnapshot = await usersRef.get();
    List<User>? allUsers = querySnapshot.docs.map((doc) => doc.data()).cast<User>().toList();

    for (var user in allUsers) {
      if (user.userID == auth.currentUser?.uid) {
        return user;
      }
    }
    return {} as User;
  }
}