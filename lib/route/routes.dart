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
  //       AutoRoute(page: SplashScreenRoute.page,  initial: true,path: "/"),
  //       AutoRoute(page: HomeScreenRoute.page),
  //       AutoRoute(page: ProfieScreenRoute.page),
  //       AutoRoute(page: ChatScreenRoute.page),
  //       AutoRoute(page: LoginScreenRoute.page),
  //       AutoRoute(page: ErrorScreenRoute.page),


 // CustomRoute for transitions
    @override
      RouteType get defaultRouteType => const RouteType.custom(); 


  @override
  List<CustomRoute> get routes => [  
    
   /// routes go here       
        CustomRoute(page: SplashScreenRoute.page, initial: true, path: "/", transitionsBuilder: (context, animation, secondaryAnimation, child) => FadeTransition(opacity: animation, child: child,),),
        CustomRoute(page: HomeScreenRoute.page,transitionsBuilder: (context, animation, secondaryAnimation, child) => FadeTransition(opacity: animation, child: child,),),
        CustomRoute(page: ProfieScreenRoute.page,transitionsBuilder: (context, animation, secondaryAnimation, child) => FadeTransition(opacity: animation, child: child,),),
        CustomRoute(page: ChatScreenRoute.page,transitionsBuilder: TransitionsBuilders.zoomIn),
        CustomRoute(page: LoginScreenRoute.page ,transitionsBuilder: (context, animation, secondaryAnimation, child) => FadeTransition(opacity: animation, child: child,),),
        CustomRoute(page: ErrorScreenRoute.page,transitionsBuilder: TransitionsBuilders.slideBottom),



        //Navigating Between Screens

        // get the scoped router by calling                    
// AutoRouter.of(context)                    
// or using the extension                    
// context.router                    
                    
// adds a new entry to the pages stack                    
// router.push(const BooksListRoute())                  
// or by using paths                  
// router.pushNamed('/books')                   
                
// removes last entry in stack and pushes provided route                 
// if last entry == provided route page will just be updated                
// router.replace(const BooksListRoute())                    
// or by using using paths                  
// router.replaceNamed('/books')                  
                
// pops until provided route, if it already exists in stack                    
// else adds it to the stack (good for web Apps).                    
// router.navigate(const BooksListRoute())                  
// or by using using paths                  
// router.navigateNamed('/books')                
              
// on Web it calls window.history.back();            
// on Native it navigates you back             
// to the previous location            
// router.navigateBack();            
            
// adds a list of routes to the pages stack at once                
// router.pushAll([                
  //  BooksListRoute(),                
  //  BookDetailsRoute(id:1),                
// ]);                
                
// This's like providing a completely new stack as it rebuilds the stack                
// with the list of passed routes                
// entires might just update if already exist                
// router.replaceAll([                
  //  LoginRoute()                
// ]);                
// pops the last page unless stack has 1 entry                    
// context.router.pop();                   
// keeps poping routes until predicate is satisfied                
// context.router.popUntil((route) => route.name == 'HomeRoute');                
// a simplifed version of the above line                
// context.router.popUntilRouteWithName('HomeRoute');       
// keeps poping routes until route with provided path is found              
/// pops all routes down to the root 

               
// context.router.popUntilRoot();                
                     
// removes the top most page in stack even if it's the last                
// remove != pop, it doesn't respect WillPopScopes it just                 
// removes the entry.                


// context.router.removeLast();                 
                
// removes any route in stack that satisfis the predicate                
// this works exactly like removing items from a regualar List                
// <PageRouteInfo>[...].removeWhere((r)=>)  


// context.router.removeWhere((route) => );                
                    
// you can also use the common helper methods from context extension to navigate  


// context.pushRoute(const BooksListRoute());                
// context.replaceRoute(const BooksListRoute());                
// context.navigateTo(const BooksListRoute());                
// context.navigateNamedTo('/books');                
// context.back();               
// context.popRoute();
  
   ];    
 }