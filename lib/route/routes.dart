part of 'route_import.dart';

@AutoRouterConfig(
  replaceInRouteName: "router"
)      
class AppRouter extends $AppRouter {      
    @override
      RouteType get defaultRouteType => const RouteType.adaptive(); 


  @override
  List<AutoRoute> get routes => [      
    AutoRoute(page: SplashScreenRoute.page, path: "/"),
        AutoRoute(page: HomeScreenRoute.page),
                AutoRoute(page: ProfieScreenRoute.page),
        AutoRoute(page: ChatScreenRoute.page),
        AutoRoute(page: LoginScreenRoute.page),
        AutoRoute(page: ErrorScreenRoute.page),


   /// routes go here     
   ];    
 }