import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

import 'package:responsive_framework/responsive_framework.dart';
import 'package:ae_boards/presentation/core/resources/theme.dart';
import 'package:ae_boards/presentation/core/routes/router.dart';


class App extends StatefulWidget {
  const App({Key? key}) : super(key: key);

  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {
  final _appRouter = AppRouter();

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      behavior: HitTestBehavior.opaque,
      onTap: () {
        FocusManager.instance.primaryFocus?.unfocus();
      },
      child: MaterialApp.router(
        localizationsDelegates: context.localizationDelegates,
        supportedLocales: context.supportedLocales,
        locale: context.locale,
        debugShowCheckedModeBanner: false,
        theme: getThemeData(context),
        themeMode: ThemeMode.light,
        builder: (context, widget) {
          return Builder(
            builder: (context) {
              if (widget == null) {
                return Container();
              }
              return GestureDetector(
                  behavior: HitTestBehavior.opaque,
                  onTap: () {
                    FocusManager.instance.primaryFocus?.unfocus();
                  },
                  child: ResponsiveWrapper.builder(
                    BouncingScrollWrapper.builder(
                        context,
                        SafeArea(
                          top: false,
                          left: false,
                          right: false,
                          child: widget,
                        )),
                    maxWidth: 1200,
                    minWidth: 480,
                    defaultScale: true,
                    breakpoints: const [
                      ResponsiveBreakpoint.resize(480, name: MOBILE),
                      ResponsiveBreakpoint.autoScale(800, name: TABLET),
                      ResponsiveBreakpoint.resize(1000, name: DESKTOP),
                    ],
                    //background: Container(color: kWebBG),
                  ));
            },
          );
        },
        routerDelegate: _appRouter.delegate(),
        routeInformationParser: _appRouter.defaultRouteParser(),
      ),
    );
  }
}
