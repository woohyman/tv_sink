
import 'base/AbstractDbControl.dart';

//自选列表数据库
class OptionalDbRepository extends AbstractDbRepository {
  @override
  String dbName = "optional2.db";

  @override
  String tableName = "table2";

  @override
  int dbVersion = 1;
}
