

import 'package:flutter/material.dart';
import 'route/route_import.dart';





void main() async {





  runApp( AutoRouteTest());
}

class AutoRouteTest extends StatelessWidget {
    AutoRouteTest({Key? key}) : super(key: key);


 final _appRouter = AppRouter();
 
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(            
      routerConfig: _appRouter.config(),
        debugShowCheckedModeBanner: false,
        title: 'Go Router Test',
        theme: ThemeData(
          primarySwatch: Colors.deepOrange,
        ),
        
        );
  }







}
