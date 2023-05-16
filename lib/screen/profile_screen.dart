import 'package:auto_route/auto_route.dart';
import 'package:auto_route_test/route/route_import.gr.dart';
import 'package:flutter/material.dart';




@RoutePage()


// ignore: must_be_immutable
class ProfieScreen extends StatelessWidget {
  String data;
   ProfieScreen({super.key, required this.data});

  @override
  Widget build(BuildContext context) {
    return  SafeArea(
      child: Scaffold(
           appBar: AppBar(
          title: const Center(child: Text(" Profile Screen")),
        ),
      body: Center(
        child: Column(
           mainAxisAlignment: MainAxisAlignment.center,
          children: [
             Text("Hello $data"),
                ElevatedButton(onPressed: (){
               AutoRouter.of(context).push(const LoginScreenRoute());
              
                  },
                  
                   child: const Text("Go to"))
          ],
        ),
      ),
      ),
    );
  }
}