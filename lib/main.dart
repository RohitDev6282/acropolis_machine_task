import 'package:acropolis_app/authentication/login.dart';
import 'package:flutter/material.dart';

void main() {
  runApp( Material());
}

class Material extends StatelessWidget {
 

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        
       
   
      ),
      debugShowCheckedModeBanner: false,
      home: Login(),
    );
  }
}
