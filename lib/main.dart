
import 'package:auto_route_test/screen/splash_screen.dart';
import 'package:flutter/material.dart';





void main() async {





  runApp( const AutoRouteTest());
}

class AutoRouteTest extends StatelessWidget {
   const AutoRouteTest({Key? key}) : super(key: key);


 final isboggedIn = true;
 
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      
        debugShowCheckedModeBanner: false,
        title: 'Go Router Test',
        theme: ThemeData(
          primarySwatch: Colors.deepOrange,
        ),
        home: const SplashScreen(),
        );
  }







}
