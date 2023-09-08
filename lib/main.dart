import 'package:flutter/material.dart';
import 'package:flutter_application_1/splash.dart';

const SAVE_KEY_NAME = 'UserLoggedIn';

void main(){
  runApp( MyApp());
 
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {   
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Login Sample',
      theme: ThemeData(
        primarySwatch: Colors.pink,
      ),
      
    
     home:Screensplash (),


    );
  }
}












