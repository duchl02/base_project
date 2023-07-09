// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:base_project/app/bloc/app_bloc.dart' as _i3;
import 'package:base_project/data/client_http.dart' as _i8;
import 'package:base_project/data/repositories/post/post_repository.dart'
    as _i7;
import 'package:base_project/data/source/remote/post/post_api.dart' as _i6;
import 'package:base_project/routes/routes.dart' as _i4;
import 'package:dio/dio.dart' as _i5;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart'
    as _i2; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
extension GetItInjectableX on _i1.GetIt {
  // initializes the registration of main-scope dependencies inside of GetIt
  _i1.GetIt init({
    String? environment,
    _i2.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i2.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    final dioClient = _$DioClient();
    gh.singleton<_i3.AppBloc>(_i3.AppBloc());
    gh.lazySingleton<_i4.AppRouter>(() => _i4.AppRouter());
    gh.singleton<_i5.Dio>(
      dioClient.mockApi(),
      instanceName: 'mockApi',
    );
    gh.factory<_i6.PostApi>(
        () => _i6.PostApi(gh<_i5.Dio>(instanceName: 'mockApi')));
    gh.factory<_i7.PostRepository>(
        () => _i7.PostRepositoryImpl(gh<_i6.PostApi>()));
    return this;
  }
}

class _$DioClient extends _i8.DioClient {}
