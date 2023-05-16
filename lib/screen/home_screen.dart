import 'package:auto_route/auto_route.dart';
import 'package:auto_route_test/route/route_import.gr.dart';
import 'package:flutter/material.dart';



@RoutePage()
class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Center(child: Text("Home Screen")),
        ),
       body: Center(
         child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
           children: [
             const Text("This is the home screen"),
               ElevatedButton(onPressed: (){
                // AutoRouter.of(context).push( ProfieScreenRoute(data: "riyad"));
                 context.router.push( ProfieScreenRoute(data: "riyad"));
                 
                
                }, child: const Text("Go to"))
           ],
         ),
       ),
      ),
    );
  }
}