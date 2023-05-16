// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i7;
import 'package:auto_route_test/screen/chat_screen.dart' as _i1;
import 'package:auto_route_test/screen/error_handle.dart' as _i2;
import 'package:auto_route_test/screen/home_screen.dart' as _i3;
import 'package:auto_route_test/screen/login_screen.dart' as _i4;
import 'package:auto_route_test/screen/profile_screen.dart' as _i5;
import 'package:auto_route_test/screen/splash_screen.dart' as _i6;
import 'package:flutter/material.dart' as _i8;

abstract class $AppRouter extends _i7.RootStackRouter {
  $AppRouter({super.navigatorKey});

  @override
  final Map<String, _i7.PageFactory> pagesMap = {
    ChatScreenRoute.name: (routeData) {
      return _i7.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i1.ChatScreen(),
      );
    },
    ErrorScreenRoute.name: (routeData) {
      return _i7.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i2.ErrorScreen(),
      );
    },
    HomeScreenRoute.name: (routeData) {
      return _i7.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i3.HomeScreen(),
      );
    },
    LoginScreenRoute.name: (routeData) {
      return _i7.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i4.LoginScreen(),
      );
    },
    ProfieScreenRoute.name: (routeData) {
      final args = routeData.argsAs<ProfieScreenRouteArgs>();
      return _i7.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i5.ProfieScreen(
          key: args.key,
          data: args.data,
        ),
      );
    },
    SplashScreenRoute.name: (routeData) {
      return _i7.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i6.SplashScreen(),
      );
    },
  };
}

/// generated route for
/// [_i1.ChatScreen]
class ChatScreenRoute extends _i7.PageRouteInfo<void> {
  const ChatScreenRoute({List<_i7.PageRouteInfo>? children})
      : super(
          ChatScreenRoute.name,
          initialChildren: children,
        );

  static const String name = 'ChatScreenRoute';

  static const _i7.PageInfo<void> page = _i7.PageInfo<void>(name);
}

/// generated route for
/// [_i2.ErrorScreen]
class ErrorScreenRoute extends _i7.PageRouteInfo<void> {
  const ErrorScreenRoute({List<_i7.PageRouteInfo>? children})
      : super(
          ErrorScreenRoute.name,
          initialChildren: children,
        );

  static const String name = 'ErrorScreenRoute';

  static const _i7.PageInfo<void> page = _i7.PageInfo<void>(name);
}

/// generated route for
/// [_i3.HomeScreen]
class HomeScreenRoute extends _i7.PageRouteInfo<void> {
  const HomeScreenRoute({List<_i7.PageRouteInfo>? children})
      : super(
          HomeScreenRoute.name,
          initialChildren: children,
        );

  static const String name = 'HomeScreenRoute';

  static const _i7.PageInfo<void> page = _i7.PageInfo<void>(name);
}

/// generated route for
/// [_i4.LoginScreen]
class LoginScreenRoute extends _i7.PageRouteInfo<void> {
  const LoginScreenRoute({List<_i7.PageRouteInfo>? children})
      : super(
          LoginScreenRoute.name,
          initialChildren: children,
        );

  static const String name = 'LoginScreenRoute';

  static const _i7.PageInfo<void> page = _i7.PageInfo<void>(name);
}

/// generated route for
/// [_i5.ProfieScreen]
class ProfieScreenRoute extends _i7.PageRouteInfo<ProfieScreenRouteArgs> {
  ProfieScreenRoute({
    _i8.Key? key,
    required String data,
    List<_i7.PageRouteInfo>? children,
  }) : super(
          ProfieScreenRoute.name,
          args: ProfieScreenRouteArgs(
            key: key,
            data: data,
          ),
          initialChildren: children,
        );

  static const String name = 'ProfieScreenRoute';

  static const _i7.PageInfo<ProfieScreenRouteArgs> page =
      _i7.PageInfo<ProfieScreenRouteArgs>(name);
}

class ProfieScreenRouteArgs {
  const ProfieScreenRouteArgs({
    this.key,
    required this.data,
  });

  final _i8.Key? key;

  final String data;

  @override
  String toString() {
    return 'ProfieScreenRouteArgs{key: $key, data: $data}';
  }
}

/// generated route for
/// [_i6.SplashScreen]
class SplashScreenRoute extends _i7.PageRouteInfo<void> {
  const SplashScreenRoute({List<_i7.PageRouteInfo>? children})
      : super(
          SplashScreenRoute.name,
          initialChildren: children,
        );

  static const String name = 'SplashScreenRoute';

  static const _i7.PageInfo<void> page = _i7.PageInfo<void>(name);
}
