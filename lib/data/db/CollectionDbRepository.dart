
import 'base/AbstractDbControl.dart';

//收藏列表数据库
class CollectionDbRepository extends AbstractDbRepository {
  @override
  String dbName = "collection2.db";

  @override
  String tableName = "table2";

  @override
  int dbVersion = 2;
}
