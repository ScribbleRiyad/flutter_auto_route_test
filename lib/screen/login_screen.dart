import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../route/route_name.dart';


// ignore: must_be_immutable
class LoginScreen extends StatelessWidget {
  
   const LoginScreen({super.key,});

  @override
  Widget build(BuildContext context) {
    return  SafeArea(
      child: Scaffold(
      body: Center(
        child: Column(
           mainAxisAlignment: MainAxisAlignment.center,
          children: [
             const Text("This is long in Page"),
                ElevatedButton(onPressed: (){
                  // types of route
                     
                      // context.go("/chat");
                  // GoRouter.of(context).go("/chat");
                context.goNamed(RouteName.homepage); 
              
                  },
                  
                   child: const Text("Go to"))
          ],
        ),
      ),
      ),
    );
  }
}