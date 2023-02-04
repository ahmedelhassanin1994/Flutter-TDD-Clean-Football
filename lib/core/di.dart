

import 'package:data_connection_checker/data_connection_checker.dart';
import 'package:get_it/get_it.dart';
import 'package:mvvm_project/core/app_prefs.dart';
import 'package:mvvm_project/features/data/data_source/local_data_source.dart';
import 'package:mvvm_project/features/data/data_source/remote_data_source.dart';
import 'package:mvvm_project/features/data/network/app_api.dart';
import 'package:mvvm_project/core/network/dio_factory.dart';
import 'package:mvvm_project/core/network/network_info.dart';
import 'package:mvvm_project/features/data/repository/repository_impl.dart';
import 'package:mvvm_project/features/domain/repository/repository.dart';
import 'package:mvvm_project/features/domain/usecase/home_usecase.dart';
import 'package:mvvm_project/features/presentation/home/home_viewmodel.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:http/http.dart' as http;


final instance=GetIt.instance;

Future<void> initAppModule() async{
 final sharedPrefs = await SharedPreferences.getInstance();
 // shared prefs instance
 instance.registerLazySingleton<SharedPreferences>(() => sharedPrefs);
 instance.registerLazySingleton(() => AppPreferences(instance()));

 // networl instance
 instance.registerLazySingleton<NetworkInfo>(() => NetworkInfoImpl(DataConnectionChecker()));
  // dio factory
 instance.registerLazySingleton<DioFactory>(() => DioFactory(instance()));

 // app service client
 final dio=await instance<DioFactory>().getDio();
 instance.registerLazySingleton<AppServiceClient>(() => AppServiceClient(dio));
 instance.registerLazySingleton<http.Client>(() => http.Client());


 // remote data source
 instance.registerLazySingleton<RemoteDataSource>(() => RemoteDataSourceImplementer(appServiceClient : instance()));


 // local data source
 instance.registerLazySingleton<LocalDataSource>(() => LocalDataSourceImplementer());

 // repository

 instance.registerLazySingleton<Repository>(() => RepositoryImpl(instance(),instance(),instance()));


}

initLoginModel() {
 if (!GetIt.I.isRegistered<HomeUseCase>()) {
  instance.registerFactory<HomeUseCase>(
          () => HomeUseCase(instance()));
  instance.registerFactory<CharactersViewModel>(() =>
      CharactersViewModel(instance()));
 }
}
