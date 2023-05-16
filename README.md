# auto_route_test

A new Flutter project.

## Getting Started

This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://docs.flutter.dev/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://docs.flutter.dev/cookbook)

For help getting started with Flutter development, view the
[online documentation](https://docs.flutter.dev/), which offers tutorials,
samples, guidance on mobile development, and a full API reference.<br>

What is AutoRoute?<br>
Auto Route is Flutter navigation package that allows for strongly-typed arguments passing, effortless deep-linking and code generation to simplify routes setup. It allows you to generate everything needed for navigation inside of your app with minimal code.

Why AutoRoute?<br>
If your App requires deep-linking or guarded routes or just a clean routing setup you'll need to use named/generated routes and you’ll end up writing a lot of boilerplate code for mediator argument classes, checking for required arguments, extracting arguments and a bunch of other stuff. See some of the many supported features in this package:<br>
Named Routes<br>
Path Parameters and Wildcard Matching<br>
Nested Routes and Routers<br>
Customizable Route Transitions
Deep Linking<br>
Route Guards<br>
Easy Bottom Navigation Bar Routing<br>
Declarative Routing<br>
Flow Routing <br>


    part of 'route_import.dart';

         @AutoRouterConfig(
         replaceInRouteName: "router"
          )      
    class AppRouter extends $AppRouter {      


       //Auto route adaptive
         @override
         RouteType get defaultRouteType => const RouteType.adaptive(); 


       @override
       List<AutoRoute> get routes => [  

      // routes go here       
            AutoRoute(page: SplashScreenRoute.page,  initial: true,path: "/"),
            AutoRoute(page: HomeScreenRoute.page),
             AutoRoute(page: ProfieScreenRoute.page),
             AutoRoute(page: ChatScreenRoute.page),
             AutoRoute(page: LoginScreenRoute.page),
             AutoRoute(page: ErrorScreenRoute.page),


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

    // child or sub class auto route 
        AutoRoute(                    
           path: '/',                    
          page: SplashScreenRoute.page,                    
           children: [                    
             AutoRoute(path: '', page: HomeScreenRoute.page),                             
             AutoRoute(path: 'posts', page: ProfieScreenRoute.page),                    
          ],                    
      ), 

      // redirect to the auto route
          AutoRoute(                    
       path: '/',                    
           page: SplashScreenRoute.page,                   
           children: [                    
             RedirectRoute(path: '/', redirectTo: 'profile'),                    
            AutoRoute(path: '', page: HomeScreenRoute.page),                             
             AutoRoute(path: 'posts', page: ProfieScreenRoute.page),                      
           ],                    
         ),
            //Navigating Between Screens

           // get the scoped router by calling                    
    AutoRouter.of(context)                    
    // or using the extension                    
    context.router                    

    // adds a new entry to the pages stack                    
    router.push(const BooksListRoute())                  
    // or by using paths                  
    router.pushNamed('/books')                   

    // removes last entry in stack and pushes provided route                 
    // if last entry == provided route page will just be updated                
    router.replace(const BooksListRoute())                    
    // or by using using paths                  
    router.replaceNamed('/books')                  

    // pops until provided route, if it already exists in stack                    
    // else adds it to the stack (good for web Apps).                    
    router.navigate(const BooksListRoute())                  
    // or by using using paths                  
    router.navigateNamed('/books')                

    // on Web it calls window.history.back();            
    // on Native it navigates you back             
    // to the previous location            
    router.navigateBack();            

    // adds a list of routes to the pages stack at once                
    router.pushAll([                
       BooksListRoute(),                
       BookDetailsRoute(id:1),                
    ]);                

    // This's like providing a completely new stack as it rebuilds the stack                
    // with the list of passed routes                
    // entires might just update if already exist                
    router.replaceAll([                
       LoginRoute()                
    ]);                
    // pops the last page unless stack has 1 entry                    
    context.router.pop();                   
    // keeps poping routes until predicate is satisfied                
    context.router.popUntil((route) => route.name == 'HomeRoute');                
    // a simplifed version of the above line                
    context.router.popUntilRouteWithName('HomeRoute');       
    // keeps poping routes until route with provided path is found              
    context.router.popUntilRouteWithPath('/some-path');            
    // pops all routes down to the root                
    context.router.popUntilRoot();                

    // removes the top most page in stack even if it's the last                
    // remove != pop, it doesn't respect WillPopScopes it just                 
    // removes the entry.                
    context.router.removeLast();                 

    // removes any route in stack that satisfis the predicate                
    // this works exactly like removing items from a regualar List                
    // <PageRouteInfo>[...].removeWhere((r)=>)                
    context.router.removeWhere((route) => );                

    // you can also use the common helper methods from context extension to navigate                
    context.pushRoute(const BooksListRoute());                
    context.replaceRoute(const BooksListRoute());                
    context.navigateTo(const BooksListRoute());                
    context.navigateNamedTo('/books');                
    context.back();               
    context.popRoute();


    //page view
    AutoTabsRouter.pageView(            
         routes: [            
            BooksTab(),            
            ProfileTab(),            
            SettingsTab(),            
            ],           
         builder: (context, child, _) {            
            final tabsRouter = AutoTabsRouter.of(context);      
            return Scaffold(            
                  appBar: AppBar(            
                  title: Text(context.topRoute.name),            
                  leading: AutoLeadingButton()),            
                  body: child,            
                  bottomNavigationBar: BottomNavigationBar(                
                        currentIndex: tabsRouter.activeIndex,                
                        onTap: tabsRouter.setActiveIndex                
                        items: [                
                          BottomNavigationBarItem(label: 'Books',...),                
                          BottomNavigationBarItem(label: 'Profile',...),                
                          BottomNavigationBarItem(label: 'Settings',...),                
                        ],                
                      ),          
                ),            
          ); },          
      );


      // Tabbar View
      AutoTabsRouter.tabBar(            
         routes: [            
            BooksTab(),            
            ProfileTab(),            
            SettingsTab(),            
            ],           
         builder: (context, child, controller) {          
            final tabsRouter = AutoTabsRouter.of(context);      
            return Scaffold(            
                  appBar: AppBar(            
                     title: Text(context.topRoute.name),            
                     leading: AutoLeadingButton(),          
                     bottom: TabBar(            
                        controller: controller,            
                        tabs: const [            
                        Tab(text: '1', icon: Icon(Icons.abc)),            
                        Tab(text: '2', icon: Icon(Icons.abc)),            
                        Tab(text: '3', icon: Icon(Icons.abc)),            
                       ],),          
                   ),            
                  body: child,            
                  bottomNavigationBar: BottomNavigationBar(                
                        currentIndex: tabsRouter.activeIndex,                
                        onTap: tabsRouter.setActiveIndex                
                        items: [                
                          BottomNavigationBarItem(label: 'Books',...),                
                          BottomNavigationBarItem(label: 'Profile',...),                
                          BottomNavigationBarItem(label: 'Settings',...),                
                        ],                
                      ),          
                ),            
          ); },          
      );

      //Bottom Navigation

      class DashboardPage extends StatelessWidget {      
      @override      
      Widget build(BuildContext context) {      
        return AutoTabsScaffold(      
          routes: const [      
            UsersRoute(),      
            PostsRoute(),      
            SettingsRoute(),      
          ],      
          bottomNavigationBuilder: (_, tabsRouter) {      
            return BottomNavigationBar(      
              currentIndex: tabsRouter.activeIndex,      
              onTap: tabsRouter.setActiveIndex,      
              items: const [      
                BottomNavigationBarItem(label: 'Users',...),      
                BottomNavigationBarItem(label: 'Posts',...),      
                BottomNavigationBarItem(label: 'Settings',...),      
              ],      
            );      
          },      
        );      
      }      
    }

       ];    
     }
