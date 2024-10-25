
import 'AbstractDbControl.dart';

//自选列表数据库
class OptionalDbControl extends AbstractDbControl {
  @override
  String dbName = "optional2.db";

  @override
  String tableName = "table2";

  @override
  int dbVersion = 1;
}
