import 'package:auto_route/auto_route.dart';
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
           children: const [
             Text("This is the home screen"),
              //  ElevatedButton(onPressed: (){
           
                
              //   }, child: const Text("Go to"))
           ],
         ),
       ),
      ),
    );
  }
}