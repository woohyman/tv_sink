
import 'AbstractDbControl.dart';

//历史列表数据库
class HistoryDbControl  extends AbstractDbControl{
  @override
  String dbName = "history2.db";

  @override
  String tableName = "table2";

  @override
  int dbVersion = 2;

}
