
import 'base/AbstractDbControl.dart';

//历史列表数据库
class HistoryDbRepository  extends AbstractDbRepository{
  @override
  String dbName = "history2.db";

  @override
  String tableName = "table2";

  @override
  int dbVersion = 2;

}
