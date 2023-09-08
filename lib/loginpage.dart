import 'package:flutter/material.dart';
import 'package:flutter_application_1/home.dart';

class ScreenLogin extends StatelessWidget {
   ScreenLogin({super.key});
 final _usernameController = TextEditingController();
  final _passwordController = TextEditingController();
  final _formkey = GlobalKey<FormState>();
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title:Text('Login Page'),
      centerTitle: true,
      ),
        body:SafeArea(
            
            
              
                child: Container(
                  color: Color.fromARGB(255, 167, 140, 149),
                  child: Center(
                    child: Column(
                        
                    children: [
                        SizedBox(height: 250     ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Form(
                            key: _formkey,
                            child: TextFormField(
                               validator: (value) {
                              if(value == null || value.isEmpty){
                                return "field is empty";
                              }
                            },
                              controller: _usernameController,
                                decoration:const InputDecoration(
                                    border: OutlineInputBorder(),
                                    hintText: 'Username',
                                ),
                                
                            ),
                          ),
                        ),
                        const SizedBox(
                            height: 20,
                        ),
                        TextFormField(
                          validator: (value) {
                            if(value == null || value.isEmpty){
                              return "field is empty";
                            }
                          },
                            controller: _passwordController,
                            obscureText: true,
                            decoration: const InputDecoration(
                                border: OutlineInputBorder(),
                                hintText: 'Password',
                                ),
                                
                                
                        ),
                   
                        SizedBox(height: 20,),
                        ElevatedButton.icon(onPressed: (){
                          if(_formkey.currentState!.validate()){
                            checkLogin(context);
                            
                          }
                          
                            
                            
                            
                        }, icon:const Icon(Icons.check), label: const Text('Login'),),
                    ],
                              
                          ),
                  ),
                ),
              ),
            
        
        );
    
  }
  void checkLogin(BuildContext ctx) 
    { 
     final _username =   _usernameController.text;
     final _password = _passwordController.text;
     if(_username == _password)
     {
      print('Username pass match');
      Navigator.of(ctx).pushReplacement(MaterialPageRoute(builder: (ctx1)=>ScreenHome()));
      

     }else{
      print('Username doesnot match');
        final _errorMessage = 'username password does not match';
        ScaffoldMessenger.of(ctx).showSnackBar(SnackBar(content: Text('username password does not match  ')));
     }
    }
     
}