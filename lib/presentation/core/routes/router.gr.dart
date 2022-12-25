// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i8;
import 'package:flutter/material.dart' as _i9;

import '../../bill/pages/my_bill_boards_page.dart' as _i5;
import '../../home/pages/home_page.dart' as _i1;
import '../../payment/pages/payment_page.dart' as _i4;
import '../../request/pages/add_request_page.dart' as _i2;
import '../../request/pages/upload_your_add_page.dart' as _i3;
import '../../search/pages/search_page.dart' as _i7;
import '../../upload/pages/upload_details_page.dart' as _i6;

class AppRouter extends _i8.RootStackRouter {
  AppRouter([_i9.GlobalKey<_i9.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i8.PageFactory> pagesMap = {
    HomePageRoute.name: (routeData) {
      return _i8.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i1.HomePage(),
      );
    },
    AddRequestPageRoute.name: (routeData) {
      return _i8.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i2.AddRequestPage(),
      );
    },
    UploadYourAddPageRoute.name: (routeData) {
      return _i8.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i3.UploadYourAddPage(),
      );
    },
    PaymentPageRoute.name: (routeData) {
      return _i8.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i4.PaymentPage(),
      );
    },
    MyBillBoardsPageRoute.name: (routeData) {
      return _i8.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i5.MyBillBoardsPage(),
      );
    },
    UploadDetailsPageRoute.name: (routeData) {
      return _i8.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i6.UploadDetailsPage(),
      );
    },
    SearchPageRoute.name: (routeData) {
      return _i8.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i7.SearchPage(),
      );
    },
  };

  @override
  List<_i8.RouteConfig> get routes => [
        _i8.RouteConfig(
          HomePageRoute.name,
          path: '/',
        ),
        _i8.RouteConfig(
          AddRequestPageRoute.name,
          path: '/add-request-page',
        ),
        _i8.RouteConfig(
          UploadYourAddPageRoute.name,
          path: '/upload-your-add-page',
        ),
        _i8.RouteConfig(
          PaymentPageRoute.name,
          path: '/payment-page',
        ),
        _i8.RouteConfig(
          MyBillBoardsPageRoute.name,
          path: '/my-bill-boards-page',
        ),
        _i8.RouteConfig(
          UploadDetailsPageRoute.name,
          path: '/upload-details-page',
        ),
        _i8.RouteConfig(
          SearchPageRoute.name,
          path: '/search-page',
        ),
      ];
}

/// generated route for
/// [_i1.HomePage]
class HomePageRoute extends _i8.PageRouteInfo<void> {
  const HomePageRoute()
      : super(
          HomePageRoute.name,
          path: '/',
        );

  static const String name = 'HomePageRoute';
}

/// generated route for
/// [_i2.AddRequestPage]
class AddRequestPageRoute extends _i8.PageRouteInfo<void> {
  const AddRequestPageRoute()
      : super(
          AddRequestPageRoute.name,
          path: '/add-request-page',
        );

  static const String name = 'AddRequestPageRoute';
}

/// generated route for
/// [_i3.UploadYourAddPage]
class UploadYourAddPageRoute extends _i8.PageRouteInfo<void> {
  const UploadYourAddPageRoute()
      : super(
          UploadYourAddPageRoute.name,
          path: '/upload-your-add-page',
        );

  static const String name = 'UploadYourAddPageRoute';
}

/// generated route for
/// [_i4.PaymentPage]
class PaymentPageRoute extends _i8.PageRouteInfo<void> {
  const PaymentPageRoute()
      : super(
          PaymentPageRoute.name,
          path: '/payment-page',
        );

  static const String name = 'PaymentPageRoute';
}

/// generated route for
/// [_i5.MyBillBoardsPage]
class MyBillBoardsPageRoute extends _i8.PageRouteInfo<void> {
  const MyBillBoardsPageRoute()
      : super(
          MyBillBoardsPageRoute.name,
          path: '/my-bill-boards-page',
        );

  static const String name = 'MyBillBoardsPageRoute';
}

/// generated route for
/// [_i6.UploadDetailsPage]
class UploadDetailsPageRoute extends _i8.PageRouteInfo<void> {
  const UploadDetailsPageRoute()
      : super(
          UploadDetailsPageRoute.name,
          path: '/upload-details-page',
        );

  static const String name = 'UploadDetailsPageRoute';
}

/// generated route for
/// [_i7.SearchPage]
class SearchPageRoute extends _i8.PageRouteInfo<void> {
  const SearchPageRoute()
      : super(
          SearchPageRoute.name,
          path: '/search-page',
        );

  static const String name = 'SearchPageRoute';
}
