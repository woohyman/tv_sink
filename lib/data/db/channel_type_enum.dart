enum ChannelType {
  collectChannel(
    "collectedChannels.db",
    "channelsTable",
    1,
  ),
  customChannel(
    "customChannels.db",
    "channelsTable",
    1,
  ),
  historyChannel(
    "historyChannels.db",
    "channelsTable",
    1,
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