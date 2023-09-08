import 'package:flutter/material.dart';
import 'package:flutter_application_1/loginpage.dart';

class ScreenHome extends StatelessWidget {
  const ScreenHome({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(appBar: AppBar
    
    
    (title: Text('LIST',
    
     
    
  ),
  centerTitle: true,
  leading: Icon(Icons.arrow_back),
  actions: [GestureDetector(
    onTap: () {
      Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (ctx1)=>ScreenLogin()));
    },
    child: Icon(Icons.abc))],
  ),
  body: ListView.builder(
    itemCount:50,
  itemBuilder: (
    BuildContext context,int index){
    return ListTile(
      
      leading:Icon(Icons.arrow_back),
      title:Text("movies"),
      trailing:Icon(Icons.edit),
      subtitle:Text("Rating: $index"),
      
     );
  }),),);
  
  
  }
  
}