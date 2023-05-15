import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../route/route_name.dart';


// ignore: must_be_immutable
class ProfieScreen extends StatelessWidget {
  String data;
   ProfieScreen({super.key, required this.data});

  @override
  Widget build(BuildContext context) {
    return  SafeArea(
      child: Scaffold(
      body: Center(
        child: Column(
           mainAxisAlignment: MainAxisAlignment.center,
          children: [
             Text("Hello $data"),
                ElevatedButton(onPressed: (){
                  // types of route
                     
                      // context.go("/chat");
                  // GoRouter.of(context).go("/chat");
                context.goNamed(RouteName.chatpage); 
              
                  },
                  
                   child: const Text("Go to"))
          ],
        ),
      ),
      ),
    );
  }
}