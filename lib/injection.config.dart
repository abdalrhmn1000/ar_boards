// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:dio/dio.dart' as _i3;
import 'package:get_it/get_it.dart' as _i1;
import 'package:google_place/google_place.dart' as _i4;
import 'package:injectable/injectable.dart' as _i2;
import 'package:internet_connection_checker/internet_connection_checker.dart'
    as _i5;
import 'package:logger/logger.dart' as _i6;
import 'package:shared_preferences/shared_preferences.dart' as _i7;

import 'injectable_module.dart' as _i8; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
Future<_i1.GetIt> $initGetIt(
  _i1.GetIt get, {
  String? environment,
  _i2.EnvironmentFilter? environmentFilter,
}) async {
  final gh = _i2.GetItHelper(
    get,
    environment,
    environmentFilter,
  );
  final injectableModule = _$InjectableModule();
  gh.lazySingleton<_i3.Dio>(() => injectableModule.dioInstance);
  gh.lazySingleton<_i4.GooglePlace>(() => injectableModule.googlePlace);
  gh.lazySingleton<_i5.InternetConnectionChecker>(
      () => injectableModule.connectionChecker);
  gh.lazySingleton<_i4.Location>(() => injectableModule.location);
  gh.lazySingleton<_i6.Logger>(() => injectableModule.logger);
  await gh.lazySingletonAsync<_i7.SharedPreferences>(
    () => injectableModule.sharedPref,
    preResolve: true,
  );
  return get;
}

class _$InjectableModule extends _i8.InjectableModule {}
