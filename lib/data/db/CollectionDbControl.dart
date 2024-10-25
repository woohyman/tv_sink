
import 'AbstractDbControl.dart';

//收藏列表数据库
class CollectionDbControl extends AbstractDbControl {
  @override
  String dbName = "collection2.db";

  @override
  String tableName = "table2";

  @override
  int dbVersion = 2;
}
