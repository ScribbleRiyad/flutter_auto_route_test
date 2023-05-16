part of 'route_import.dart';

@AutoRouterConfig(
  replaceInRouteName: "router"
)      
class AppRouter extends $AppRouter {      


   //Auto route adaptive
  //   @override
  //     RouteType get defaultRouteType => const RouteType.adaptive(); 


  // @override
  // List<AutoRoute> get routes => [  
    
  // routes go here       
  //       AutoRoute(page: SplashScreenRoute.page, path: "/"),
  //       AutoRoute(page: HomeScreenRoute.page),
  //       AutoRoute(page: ProfieScreenRoute.page),
  //       AutoRoute(page: ChatScreenRoute.page),
  //       AutoRoute(page: LoginScreenRoute.page),
  //       AutoRoute(page: ErrorScreenRoute.page),


 //Auto route package CustomRoute
    @override
      RouteType get defaultRouteType => const RouteType.custom(); 


  @override
  List<CustomRoute> get routes => [  
    
   /// routes go here       
        CustomRoute(page: SplashScreenRoute.page, path: "/", transitionsBuilder: (context, animation, secondaryAnimation, child) => FadeTransition(opacity: animation, child: child,),),
        CustomRoute(page: HomeScreenRoute.page,transitionsBuilder: (context, animation, secondaryAnimation, child) => FadeTransition(opacity: animation, child: child,),),
        CustomRoute(page: ProfieScreenRoute.page,transitionsBuilder: (context, animation, secondaryAnimation, child) => FadeTransition(opacity: animation, child: child,),),
        CustomRoute(page: ChatScreenRoute.page,transitionsBuilder: TransitionsBuilders.zoomIn),
        CustomRoute(page: LoginScreenRoute.page ,transitionsBuilder: (context, animation, secondaryAnimation, child) => FadeTransition(opacity: animation, child: child,),),
        CustomRoute(page: ErrorScreenRoute.page,transitionsBuilder: TransitionsBuilders.slideBottom),
  
   ];    
 }