import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:whatsapp/Login.dart';
import 'Homee.dart';
import 'Login.dart';

void main() async {

  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  FirebaseFirestore.instance
      .collection("usuarios")
      .doc("001")
      .set({"nome": "Iphone"});

  runApp(MaterialApp(
    home: Login(),
    debugShowCheckedModeBanner: false,
  ));

}

