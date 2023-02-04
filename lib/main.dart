import 'package:flutter/material.dart';
import 'package:mvvm_project/core/my_app.dart';

import 'package:hive_flutter/hive_flutter.dart';
import 'package:mvvm_project/features/data/cache_model/model_cache.dart';

import 'core/constant.dart';
import 'core/di.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Hive.initFlutter();
  await initAppModule();
  Hive.registerAdapter<Model_Cache>(ModelCacheAdapter());
  await Hive.openBox<Model_Cache>('${Constant.localKey}');

  runApp(MyApp());
}
