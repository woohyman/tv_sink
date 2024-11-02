enum ChannelType {
  collectChannel(
    "collectedChannels1.db",
    "channelsTable1",
    2,
  ),
  customChannel(
    "customChannels1.db",
    "channelsTable1",
    2,
  ),
  historyChannel(
    "historyChannels1.db",
    "channelsTable1",
    2,
  );

  const ChannelType(
      this.dbName,
      this.tableName,
      this.dbVersion,
      );

  final String dbName;
  final String tableName;
  final int dbVersion;
}