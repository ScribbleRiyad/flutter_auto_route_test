import 'package:flutter/material.dart';
import 'package:go_route/route/route_name.dart';
import 'package:go_router/go_router.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  SafeArea(
      child: Scaffold(
       body: Center(
         child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
           children: [
             const Text("Go Route"),
               ElevatedButton(onPressed: (){
                // GoRouter.of(context).go("/profile");
                
                //  String data = "Riyad";
                      
                // context.go("/profile$data");
                // context.goNamed(RouteName.profilepage, pathParameters: {"data":"riyad"});
                context.goNamed(RouteName.profilepage, queryParameters: {"data":"riyad"});
                
                }, child: const Text("Go to"))
           ],
         ),
       ),
      ),
    );
  }
}