import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';


@RoutePage()
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