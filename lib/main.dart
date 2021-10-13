import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:widgecraft/home.dart';

void main() async{
  //since main is async ensure it initialises
  WidgetsFlutterBinding.ensureInitialized();

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.

  //Initialize firebase
  final Future<FirebaseApp> _initialize = Firebase.initializeApp();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: FutureBuilder(
          future: _initialize,
          builder: (context,snapshot){
            print(snapshot.connectionState);
            return Home();}),
    );
  }
}




