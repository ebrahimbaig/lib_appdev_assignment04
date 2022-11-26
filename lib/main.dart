import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:lib_appdev_assignment/Providers/bookprovider.dart';
import 'package:lib_appdev_assignment/myapp.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:provider/provider.dart';

Future main() async {
  WidgetsFlutterBinding.ensureInitialized();

  if (kIsWeb) {
    await Firebase.initializeApp(
      options: const FirebaseOptions(
          apiKey: "AIzaSyB6oEwBDrLbX7INjuH5G8lZq_6sx5bAcnQ",
          authDomain: "lib-appdev-assignment.firebaseapp.com",
          projectId: "lib-appdev-assignment",
          storageBucket: "lib-appdev-assignment.appspot.com",
          messagingSenderId: "871460089461",
          appId: "1:871460089461:web:6bb84f5f5a9ae6085b123c"),
    );
  } else {
    await Firebase.initializeApp();
  }
  runApp(ChangeNotifierProvider(
    child: const MyApp(),
    create: (_) => BooksProvider(),
  ));
}
