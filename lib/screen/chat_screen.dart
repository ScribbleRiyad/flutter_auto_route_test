import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../route/route_name.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  SafeArea(
      child: Scaffold(
        body: Center(
          child: Column(
             mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text("Go chat screen page"),
        
        
               ElevatedButton(onPressed: (){
                
                  //types of route
                      // context.go("/");
                // GoRouter.of(context).go("/");
                  context.goNamed(RouteName.homepage); 
                }, child: const Text("Go to"))
            ],
          ),
        ),
      ),
    );
  }
}