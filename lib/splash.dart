import 'package:flutter/material.dart';
import 'package:flutter_application_1/loginpage.dart';

class Screensplash extends StatefulWidget {
  const Screensplash({super.key});

  @override
  State<Screensplash> createState() => _ScreensplashState();
}

class _ScreensplashState extends State<Screensplash> {
  @override
  void initState() {
    Login();
    super.initState();
  }
  @override
  void didChangeDependencies() {
    // TODO: implement didChangeDependencies
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: Center(
      child: Container(
        
        child: Image.asset(".dart_tool/asset/images/f1.webp",
        height: 900
        ,
        ),
      ),
    ),);
    
    
  }
  Future<void> Login()async{
    await Future.delayed(Duration(seconds: 2));
    Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (ctx)=>ScreenLogin()));
  }
  //Future<void> CheckUserLoggedIn()async{
   // final _SharedPrefs = await _SharedPreferences.getInstance();
 //}
//}
}