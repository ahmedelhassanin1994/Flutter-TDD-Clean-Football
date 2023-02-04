

import 'package:hive/hive.dart';
part 'model_cache.g.dart';

@HiveType(typeId: 10)
class Model_Cache extends HiveObject{

  @HiveField(0)
  var key;
  @HiveField(1)
  var value;

  Model_Cache
      ( this.key, this.value);

}