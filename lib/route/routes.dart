part of 'route_import.dart';

@AutoRouterConfig(
  replaceInRouteName: "router"
)      
class AppRouter extends $AppRouter {      
    RouteType get defaultRouteType => const RouteType.adaptive(); 


  List<AutoRoute> get routes => [      
   /// routes go here     
   ];    
 }