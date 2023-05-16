import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

@RoutePage()
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
                
                 
                }, child: const Text("Go to"))
            ],
          ),
        ),
      ),
    );
  }
}