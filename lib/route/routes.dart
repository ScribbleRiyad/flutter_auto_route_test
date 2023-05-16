part of 'route_import.dart';

@AutoRouterConfig(
  replaceInRouteName: "router"
)      
class AppRouter extends $AppRouter {      
    @override
      RouteType get defaultRouteType => const RouteType.adaptive(); 


  @override
  List<AutoRoute> get routes => [      
   /// routes go here     
   ];    
 }