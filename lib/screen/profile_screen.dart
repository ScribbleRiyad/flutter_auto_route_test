import 'package:flutter/material.dart';





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
               
              
                  },
                  
                   child: const Text("Go to"))
          ],
        ),
      ),
      ),
    );
  }
}