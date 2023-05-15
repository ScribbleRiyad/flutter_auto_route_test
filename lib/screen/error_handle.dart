import 'package:flutter/material.dart';



// ignore: must_be_immutable
class ErrorScreen extends StatelessWidget {
 
   const ErrorScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  const SafeArea(
      child: Scaffold(
      body: Center(
        child: Text("Routing Has Errro"),
      ),
      ),
    );
  }
}