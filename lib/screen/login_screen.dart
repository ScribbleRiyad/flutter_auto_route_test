import 'package:flutter/material.dart';
import 'package:auto_route/auto_route.dart';



// ignore: must_be_immutable

@RoutePage()
class LoginScreen extends StatelessWidget {
  
   const LoginScreen({super.key,});

  @override
  Widget build(BuildContext context) {
    return  SafeArea(
      child: Scaffold(
         appBar: AppBar(
          title: const Center(child: Text(" Login Screen")),
        ),
      body: Center(
        child: Column(
           mainAxisAlignment: MainAxisAlignment.center,
          children: [
             const Text("This is long in Page"),
                ElevatedButton(onPressed: (){
           
              
                  },
                  
                   child: const Text("Go to"))
          ],
        ),
      ),
      ),
    );
  }
}